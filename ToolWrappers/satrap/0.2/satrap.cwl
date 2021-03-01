class: CommandLineTool
id: satrap.cwl
inputs:
- id: in_step
  doc: "(vector<int>)     PLEASE SELECT THE DESIRED STEP OF THE ANALYSIS USING \"\
    -step\" parameter:\n\"1\" for STEP 1, \"2\" for STEP 2 etc. For instance the Oases\
    \ pipeline\nrequires: \"-step 1 2\". The steps 3 and 4 are set by default, so\
    \ the\nomitting of this parameter will erase the previous results in these steps"
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_bin
  doc: (string)        Set the directory path where binaries are located [bin/]
  type: boolean?
  inputBinding:
    prefix: -bin
- id: in_tmp_dir
  doc: (string)        Set the temporary directory where results will be saved [tmp/].
  type: boolean?
  inputBinding:
    prefix: -tmp_dir
- id: in_max_reads
  doc: (float)         Max number of reads per analyzed file or files [10]
  type: boolean?
  inputBinding:
    prefix: -max_reads
- id: in_tags
  doc: "(string,string)    pair-end tag names for assembling purpose. It enables paired-end\n\
    management (-t1) (tag examples: F3, F5-RNA ...)"
  type: boolean?
  inputBinding:
    prefix: -tags
- id: in_tone
  doc: (int)          it trims the first sequenced end at 3' (if paired-end) [0]
  type: boolean?
  inputBinding:
    prefix: -t1
- id: in_int_it_trims_second_end
  doc: (int)          it trims the second sequenced end at 3' [0]
  type: boolean?
  inputBinding:
    prefix: -t2
- id: in_int_minimum_mean_quality_tolerated
  doc: (int)          minimum mean quality tolerated for paired_end sequences [15]
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_len
  doc: (int)          minimum read size after trimming [30]
  type: boolean?
  inputBinding:
    prefix: -len
- id: in_mate_pair
  doc: "The sequences coming from mate pair libraries will be\nmanaged as paired-end\
    \ (for assembling purpose) [disabled]"
  type: boolean?
  inputBinding:
    prefix: -mate-pair
- id: in_velvet_path
  doc: '(string)       path to velvet binaries - example: path/velvet/'
  type: boolean?
  inputBinding:
    prefix: -velvet_path
- id: in_oases_path
  doc: '(string)       path to Oases binary - example: path/oases/'
  type: boolean?
  inputBinding:
    prefix: -oases_path
- id: in_strand_specific
  doc: Velvet will be set considering specific strand
  type: boolean?
  inputBinding:
    prefix: -strand_specific
- id: in_km_er_set
  doc: (vector<int>)    Set the kmer to be considered. [23 25 27 29 31]
  type: boolean?
  inputBinding:
    prefix: -kmer_set
- id: in_oases_km_er
  doc: (int)          Oases kmer parameter [27]
  type: boolean?
  inputBinding:
    prefix: -oases_kmer
- id: in_int_it_trims_sequences
  doc: (int)          it trims sequences at 3' end [0]
  type: boolean?
  inputBinding:
    prefix: -T2
- id: in_int_minimum_mean_quality_reads
  doc: (int)          minimum mean quality for reads [9]
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_int_minimum_contig
  doc: (int)          Minimum contig length [100]
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_float_maximum_fraction
  doc: (float)         Maximum tolerated fraction of Ns for each translated contig[1].
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_int_minimum_coverage_required
  doc: "(int)          Minimum coverage required to operate the assembly correction\n\
    If this parameter is used -z will be not considered."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_erode
  doc: (int)          Minimum coverage considered to erode contig ends [2]
  type: boolean?
  inputBinding:
    prefix: -erode
- id: in_float_zscore_required
  doc: "(float)         z-score required to calculate the coverage threshold basing\
    \ on\nthe statistical analysis of the sequence coverage [3]. Low values\nare more\
    \ conservative when the error correction is applied. As\nconsequence of this fact\
    \ Ns will be introduced around color\nincoherence not supported by enough sequence\
    \ coverage."
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_erosion
  doc: it doesn't erodes contig ends in any way
  type: boolean?
  inputBinding:
    prefix: -erosion
- id: in_no_clustering
  doc: For DNA-seq assembly. It doesn't considers the clustering analysis
  type: boolean?
  inputBinding:
    prefix: -no_clustering
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- satrap
