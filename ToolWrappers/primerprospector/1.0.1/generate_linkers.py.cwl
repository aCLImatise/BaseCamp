class: CommandLineTool
id: ../../../generate_linkers.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_linker_len
  doc: 'Size of linker in base pairs. [default: 2]'
  type: long
  inputBinding:
    prefix: --linker_len
- id: in_all_files
  doc: Test all _hits.txt files in directory specified with
  type: boolean
  inputBinding:
    prefix: --all_files
- id: in_idot
  doc: '[default: False]'
  type: boolean
  inputBinding:
    prefix: -i.
- id: in_output_dir
  doc: "Specify output directory for linkers summary.\n[default: .]"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_score_type
  doc: "Value to use from primer hits file to determine a\ngiven primer's amplification\
    \ success.  Valid choices\nare weighted_score, overall_mismatches, tp_mismatches.\n\
    Gibbs energy scores not currently implemented\n[default: weighted_score]"
  type: File
  inputBinding:
    prefix: --score_type
- id: in_score_threshold
  doc: "If primer has score at or below this parameter, the\nprimer amplification\
    \ is considered to be successful.\n[default: 1.0]"
  type: double
  inputBinding:
    prefix: --score_threshold
- id: in_hits_fps
  doc: "Target primer hits files to generate linkers with.\nSeparate multiple files\
    \ with a colon. [REQUIRED]"
  type: string
  inputBinding:
    prefix: --hits_fps
- id: in_fast_a_fps
  doc: "Fasta filepath(s).  Must include all fasta sequences\nused to generate the\
    \ hits files.  Separate multiple\nfiles with a colon. [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --fasta_fps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Specify output directory for linkers summary.\n[default: .]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- generate_linkers.py
