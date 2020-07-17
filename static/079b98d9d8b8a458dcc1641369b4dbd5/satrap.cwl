class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/satrap.cwl
inputs:
- id: max_reads
  doc: (float)         Max number of reads per analyzed file or files [10]
  type: boolean
  inputBinding:
    prefix: -max_reads
- id: tags
  doc: '(string,string)    pair-end tag names for assembling purpose. It enables paired-end
    management (-t1) (tag examples: F3, F5-RNA ...)'
  type: boolean
  inputBinding:
    prefix: -tags
- id: tone
  doc: (int)          it trims the first sequenced end at 3' (if paired-end) [0]
  type: boolean
  inputBinding:
    prefix: -t1
- id: int_it_trims_second_sequenced_end
  doc: (int)          it trims the second sequenced end at 3' [0]
  type: boolean
  inputBinding:
    prefix: -t2
- id: int_minimum_mean_quality_tolerated
  doc: (int)          minimum mean quality tolerated for paired_end sequences [15]
  type: boolean
  inputBinding:
    prefix: -q
- id: len
  doc: (int)          minimum read size after trimming [30]
  type: boolean
  inputBinding:
    prefix: -len
- id: mate_pair
  doc: The sequences coming from mate pair libraries will be  managed as paired-end
    (for assembling purpose) [disabled]
  type: boolean
  inputBinding:
    prefix: -mate-pair
- id: velvet_path
  doc: '(string)       path to velvet binaries - example: path/velvet/ '
  type: boolean
  inputBinding:
    prefix: -velvet_path
- id: oases_path
  doc: '(string)       path to Oases binary - example: path/oases/ '
  type: boolean
  inputBinding:
    prefix: -oases_path
- id: strand_specific
  doc: Velvet will be set considering specific strand
  type: boolean
  inputBinding:
    prefix: -strand_specific
- id: km_er_set
  doc: (vector<int>)    Set the kmer to be considered. [23 25 27 29 31]
  type: boolean
  inputBinding:
    prefix: -kmer_set
- id: oases_km_er
  doc: (int)          Oases kmer parameter [27]
  type: boolean
  inputBinding:
    prefix: -oases_kmer
- id: int_it_trims_sequences
  doc: (int)          it trims sequences at 3' end [0]
  type: boolean
  inputBinding:
    prefix: -T2
- id: int_minimum_mean_quality_reads
  doc: (int)          minimum mean quality for reads [9]
  type: boolean
  inputBinding:
    prefix: -Q
- id: int_minimum_contig
  doc: (int)          Minimum contig length [100]
  type: boolean
  inputBinding:
    prefix: -l
- id: float_maximum_tolerated
  doc: (float)         Maximum tolerated fraction of Ns for each translated contig[1].
  type: boolean
  inputBinding:
    prefix: -n
- id: int_minimum_coverage_required
  doc: (int)          Minimum coverage required to operate the assembly correction
    If this parameter is used -z will be not considered.
  type: boolean
  inputBinding:
    prefix: -c
- id: erode
  doc: (int)          Minimum coverage considered to erode contig ends [2]
  type: boolean
  inputBinding:
    prefix: -erode
- id: float_zscore_required
  doc: (float)         z-score required to calculate the coverage threshold basing
    on the statistical analysis of the sequence coverage [3]. Low values are more
    conservative when the error correction is applied. As consequence of this fact
    Ns will be introduced around color incoherence not supported by enough sequence
    coverage.
  type: boolean
  inputBinding:
    prefix: -z
- id: erosion
  doc: it doesn't erodes contig ends in any way
  type: boolean
  inputBinding:
    prefix: -erosion
- id: no_clustering
  doc: For DNA-seq assembly. It doesn't considers the clustering analysis
  type: boolean
  inputBinding:
    prefix: -no_clustering
outputs: []
cwlVersion: v1.1
baseCommand:
- satrap
