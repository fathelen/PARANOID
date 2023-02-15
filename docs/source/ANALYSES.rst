Included Analyses
=================

Short overview of all analyses implemented in PARANOiD

.. _merge-replicates-analysis:

Merge replicates
----------------

Merges several replicates into a single representative version which can be used for publications, posters or presentations. 
This version shows the mean hit count for every position. Additionally, a correlation analysis is performed to give the user 
an evaluation of the sample similarity and therefore a rationale for this analysis.
Is deactivated by default. Can be activated via :ref:`--merge_replicates <merge-replicates>`

.. _RNA-subtype-analysis:

RNA subtypes
------------

Analysis to determine if the protein of interest is prone to bind to specific RNA subtypes or regions. As this is determined 
via the :ref:`annotation file <annotation>` only subtypes included there can be determined (shown in column 3). 
To see which RNA subtypes are included in the annotation file a :ref:`script <determine-feature-types>` was added. 
When choosing RNA subtypes one has to be careful not to use subtypes that are hierarchically higher or lower to each other as 
these will at least partially cover the same reference regions making hits in these regions ambiguous. 
The `SO ontologies <https://github.com/The-Sequence-Ontology/SO-Ontologies/blob/master/Ontology_Files/subsets/SOFA.obo>`_ can 
be used to get an overview of the official hierarchical structures of annotation files. 
Is activated when an :ref:`annotation file <annotation>` is provided.

.. _transcript-analysis:

Transcript analysis
-------------------

Analysis to show if specific RNAs are more prone to interact with the the protein of interest. 
If choosing this analysis a file containing all RNAs of interest should be used as input reference instead of the genome. 
Here all RNAs of interest (or artificial RNAs present in the sample) can be combined to a single fasta file. If the general 
transcriptome of an organism shall be examined, they can often be accessed next to the genome and annotation of the organism. 
If not a FASTA file containing the transcripts can be generated as follows (needs the genome and an annotation file):

```
--map_to_transcripts
```

.. _peak-calling:

Peak calling
------------

Results obtained from analyzed iCLIP experiments typically contain a fair amount of background noise (signal not caused by
the actual protein-RNA interaction). This can be due to the reverse transcription not terminating when encountering an
aminoacid or by a covalent binding of the protein of interest with an RNA just because their were in close proximity. Peak calling
is supposed to filter out this background noise and thus reduce the amount of false positive signal. 
PARANOiD employs `PureCLIP <https://github.com/skrakau/PureCLIP>`_ for its peak calling process. 

.. _peak-distance-analysis:

Peak distance analysis
----------------------

.. _motif-detection:

Motif detection
---------------