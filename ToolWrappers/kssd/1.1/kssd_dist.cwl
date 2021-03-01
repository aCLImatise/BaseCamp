class: CommandLineTool
id: kssd_dist.cwl
inputs:
- id: in_by_read
  doc: sketch the file by read[false].
  type: boolean?
  inputBinding:
    prefix: --byread
- id: in_correction
  doc: "/1       perform correction for shared k-mer counts or not\n.[0]"
  type: long?
  inputBinding:
    prefix: --correction
- id: in_mut_dist_max
  doc: max mutation allowed for distance output.[1]
  type: long?
  inputBinding:
    prefix: --mutDist_max
- id: in_skf
  doc: share_kmer_ct file path.
  type: File?
  inputBinding:
    prefix: --skf
- id: in_half_km_er_length
  doc: 'set half Kmer length: 2-15 [8]'
  type: long?
  inputBinding:
    prefix: --halfKmerlength
- id: in_keep_co_file
  doc: keep intermedia .co files.
  type: boolean?
  inputBinding:
    prefix: --keepcofile
- id: in_keep_skf
  doc: turn on share_kmer_ct file keep mode.[false]
  type: boolean?
  inputBinding:
    prefix: --keepskf
- id: in_list
  doc: a file contain paths for all query sequences
  type: File?
  inputBinding:
    prefix: --list
- id: in_dim_rdc_level
  doc: "Dimension Reduction Level or provide .shuf\nfile[2]"
  type: long?
  inputBinding:
    prefix: --DimRdcLevel
- id: in_max_memory
  doc: maximal memory (in G) usage allowed
  type: long?
  inputBinding:
    prefix: --maxMemory
- id: in_metric
  doc: '/1           output metrics: 0: Jaccard/1: Containment [0]'
  type: long?
  inputBinding:
    prefix: --metric
- id: in_lst_k_mero_crs
  doc: Specify the Least Kmer occurence in fastq file
  type: long?
  inputBinding:
    prefix: --LstKmerOcrs
- id: in_neighbor_n_max
  doc: max number of nearest reference genomes.[1]
  type: long?
  inputBinding:
    prefix: --neighborN_max
- id: in_outdir
  doc: folder path for results files.
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_fields
  doc: "/1/2      output fields(latter includes former):\nDistance/Q-values/Confidence\
    \ Intervels.[2]"
  type: long?
  inputBinding:
    prefix: --outfields
- id: in_thread_n
  doc: set threads number [all threads]
  type: long?
  inputBinding:
    prefix: --threadN
- id: in_pipe_cmd
  doc: pipe command.
  type: string?
  inputBinding:
    prefix: --pipecmd
- id: in_quality
  doc: Filter Kmer with lowest base quality < q (Phred)
  type: long?
  inputBinding:
    prefix: --quality
- id: in_reference_dir
  doc: reference genome/database search against.
  type: File?
  inputBinding:
    prefix: --reference_dir
- id: in_option_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_query
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kssd
- dist
