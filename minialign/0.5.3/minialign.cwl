class: CommandLineTool
id: ../../../minialign.cwl
inputs:
- id: load_preset_params
  doc: load preset params {pacbio,ont,ava} [ont]
  type: string
  inputBinding:
    prefix: -x
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: switch_alignment_mode
  doc: switch to all-versus-all alignment mode
  type: boolean
  inputBinding:
    prefix: -X
- id: show_version_number
  doc: show version number [0.5.2-unknown]
  type: boolean
  inputBinding:
    prefix: -v
- id: kmer_size
  doc: k-mer size [15]
  type: long
  inputBinding:
    prefix: -k
- id: minimizer_window_size
  doc: minimizer window size [{-k}*2/3]
  type: long
  inputBinding:
    prefix: -w
- id: dump_index_file
  doc: dump index to FILE []
  type: File
  inputBinding:
    prefix: -d
- id: load_index_file
  doc: load index from FILE [] (overriding -k and -w)
  type: File
  inputBinding:
    prefix: -l
- id: match_award
  doc: match award [1]
  type: long
  inputBinding:
    prefix: -a
- id: mismatch_penalty
  doc: mismatch penalty [1]
  type: long
  inputBinding:
    prefix: -b
- id: gap_open_penalty
  doc: gap open penalty [1]
  type: long
  inputBinding:
    prefix: -p
- id: gap_extension_penalty
  doc: gap extension penalty [1]
  type: long
  inputBinding:
    prefix: -q
- id: minimum_alignment_score
  doc: minimum alignment score [50]
  type: long
  inputBinding:
    prefix: -s
- id: minimum_alignment_score_ratio
  doc: minimum alignment score ratio [0.30]
  type: long
  inputBinding:
    prefix: -m
- id: output_format_
  doc: output format {sam,maf,blast6,blasr1,blasr4,paf,mhap,falcon} [sam]
  type: string
  inputBinding:
    prefix: -O
- id: include_quality_string
  doc: include quality string
  type: boolean
  inputBinding:
    prefix: -Q
- id: read_group_line
  doc: read group header line, like "@RG\tID:1" []
  type: string
  inputBinding:
    prefix: -R
- id: list_optional_tags
  doc: ',...   list of optional tags: {RG,AS,XS,NM,NH,IH,SA,MD} [] RG is also inferred
    from -R supp. records are omitted when SA tag is enabled'
  type: string
  inputBinding:
    prefix: -T
- id: first
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trial
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- minialign
