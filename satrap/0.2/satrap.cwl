#!/usr/bin/env cwl-runner

baseCommand:
- satrap
class: CommandLineTool
cwlVersion: v1.0
id: satrap
inputs:
- doc: (float)         Max number of reads per analyzed file or files [10]
  id: max_reads
  inputBinding:
    prefix: -max_reads
  type: boolean
- doc: '(string,string)    pair-end tag names for assembling purpose. It enables paired-end
    management (-t1) (tag examples: F3, F5-RNA ...)'
  id: tags
  inputBinding:
    prefix: -tags
  type: boolean
- doc: (int)          it trims the first sequenced end at 3' (if paired-end) [0]
  id: t1
  inputBinding:
    prefix: -t1
  type: boolean
- doc: (int)          it trims the second sequenced end at 3' [0]
  id: t2
  inputBinding:
    prefix: -t2
  type: boolean
- doc: (int)          minimum mean quality tolerated for paired_end sequences [15]
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: (int)          minimum read size after trimming [30]
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: The sequences coming from mate pair libraries will be  managed as paired-end
    (for assembling purpose) [disabled]
  id: mate_pair
  inputBinding:
    prefix: -mate-pair
  type: boolean
- doc: '(string)       path to velvet binaries - example: path/velvet/ '
  id: velvet_path
  inputBinding:
    prefix: -velvet_path
  type: boolean
- doc: '(string)       path to Oases binary - example: path/oases/ '
  id: oases_path
  inputBinding:
    prefix: -oases_path
  type: boolean
- doc: Velvet will be set considering specific strand
  id: strand_specific
  inputBinding:
    prefix: -strand_specific
  type: boolean
- doc: (vector<int>)    Set the kmer to be considered. [23 25 27 29 31]
  id: km_er_set
  inputBinding:
    prefix: -kmer_set
  type: boolean
- doc: (int)          Oases kmer parameter [27]
  id: oases_km_er
  inputBinding:
    prefix: -oases_kmer
  type: boolean
- doc: (int)          it trims sequences at 3' end [0]
  id: t2
  inputBinding:
    prefix: -T2
  type: boolean
- doc: (int)          minimum mean quality for reads [9]
  id: q
  inputBinding:
    prefix: -Q
  type: boolean
- doc: (int)          minimum read size after trimming [30]
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: (int)          Minimum contig length [100]
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: (float)         Maximum tolerated fraction of Ns for each translated contig[1].
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: (int)          Minimum coverage required to operate the assembly correction
    If this parameter is used -z will be not considered.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: (int)          Minimum coverage considered to erode contig ends [2]
  id: erode
  inputBinding:
    prefix: -erode
  type: boolean
- doc: (float)         z-score required to calculate the coverage threshold basing
    on the statistical analysis of the sequence coverage [3]. Low values are more
    conservative when the error correction is applied. As consequence of this fact
    Ns will be introduced around color incoherence not supported by enough sequence
    coverage.
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: it doesn't erodes contig ends in any way
  id: erosion
  inputBinding:
    prefix: -erosion
  type: boolean
- doc: For DNA-seq assembly. It doesn't considers the clustering analysis
  id: no_clustering
  inputBinding:
    prefix: -no_clustering
  type: boolean
