class: CommandLineTool
id: optimize_primers.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
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
    \ is considered to be successful.\n[default: 2.0]"
  type: double
  inputBinding:
    prefix: --score_threshold
- id: in_hits_fp
  doc: "Target primer hits file to generate base frequencies\nwith. [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --hits_fp
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
- optimize_primers.py
