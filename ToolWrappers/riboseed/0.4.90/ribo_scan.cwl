class: CommandLineTool
id: ribo_scan.cwl
inputs:
- id: in_output
  doc: 'output directory; default: /'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_kingdom
  doc: "whether to look for eukaryotic, archaeal, or bacterial\nrDNA; default: bac"
  type: string
  inputBinding:
    prefix: --kingdom
- id: in_id_thresh
  doc: "partial rRNA hits below this threshold will be\nignored. default: 0.5"
  type: double
  inputBinding:
    prefix: --id_thresh
- id: in_barr_nap_exe
  doc: 'path to barrnap executable; default: barrnap'
  type: File
  inputBinding:
    prefix: --barrnap_exe
- id: in_name
  doc: 'name to give the contig files; default: infered from'
  type: string
  inputBinding:
    prefix: --name
- id: in_min_length
  doc: 'skip the scaffold if its shorter than this default: 0'
  type: long
  inputBinding:
    prefix: --min_length
- id: in_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File
  inputBinding:
    prefix: --verbosity
- id: in_file
  doc: -c CORES, --cores CORES
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output directory; default: /'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File
  outputBinding:
    glob: $(inputs.in_verbosity)
cwlVersion: v1.1
baseCommand:
- ribo
- scan
