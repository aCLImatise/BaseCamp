class: CommandLineTool
id: refseq_masher_matches.cwl
inputs:
- id: in_mash_bin
  doc: Mash binary path (default="mash")
  type: File?
  inputBinding:
    prefix: --mash-bin
- id: in_output
  doc: Output file path (default="-"/stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: '[tab|csv]         Output file type (tab|csv)'
  type: File?
  inputBinding:
    prefix: --output-type
- id: in_top_n_results
  doc: "Output top N results sorted by distance in\nascending order (default=5)"
  type: long?
  inputBinding:
    prefix: --top-n-results
- id: in_min_km_er_threshold
  doc: "Mash sketch of reads: \"Minimum copies of\neach k-mer required to pass noise\
    \ filter for\nreads\" (default=8)"
  type: long?
  inputBinding:
    prefix: --min-kmer-threshold
- id: in_tmp_dir
  doc: "Temporary analysis files path (where to save\ntemp Mash sketch file) (default=\"\
    /tmp\")"
  type: Directory?
  inputBinding:
    prefix: --tmp-dir
- id: in_input_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file path (default="-"/stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_type
  doc: '[tab|csv]         Output file type (tab|csv)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_type)
hints: []
cwlVersion: v1.1
baseCommand:
- refseq_masher
- matches
