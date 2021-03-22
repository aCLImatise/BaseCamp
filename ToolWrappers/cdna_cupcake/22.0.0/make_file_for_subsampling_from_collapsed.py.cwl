class: CommandLineTool
id: make_file_for_subsampling_from_collapsed.py.cwl
inputs:
- id: in_input_prefix
  doc: "Collapsed prefix (default: hq_isoforms.fastq.no5merge.\ncollapsed.min_fl_2.filtered)"
  type: long?
  inputBinding:
    prefix: --input_prefix
- id: in_output_prefix
  doc: 'Output prefix (default: output.for_subsampling'
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_match_an_not_parsed
  doc: 'MatchAnnot parsed output (default: None)'
  type: string?
  inputBinding:
    prefix: --matchAnnot_parsed
- id: in_sq_anti_class
  doc: 'SQANTI classification file (default: None)'
  type: File?
  inputBinding:
    prefix: --sqanti_class
- id: in_demux
  doc: "Demuxed FL count file - if provided, will be used\ninstead of the <input_prefix>.abundance.txt\
    \ file"
  type: File?
  inputBinding:
    prefix: --demux
- id: in_include_single_exons
  doc: "Include single exons (default: OFF)\n"
  type: boolean?
  inputBinding:
    prefix: --include_single_exons
- id: in_make
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_subsample_ready
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_iso_seq
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_collapsed
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- make_file_for_subsampling_from_collapsed.py
