class: CommandLineTool
id: taxa_coverage.py.cwl
inputs:
- id: in_is_enabled
  doc: is enabled.
  type: string?
  inputBinding:
    prefix: -p
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_tax_a_depth
  doc: "Depth of taxa to generate graphs and summaries for,\nstarting with domain.\
    \ [default: 3]"
  type: long?
  inputBinding:
    prefix: --taxa_depth
- id: in_all_files
  doc: Test all _hits.txt files in directory specified with
  type: boolean?
  inputBinding:
    prefix: --all_files
- id: in_idot
  doc: '[default: False]'
  type: boolean?
  inputBinding:
    prefix: -i.
- id: in_primer_pairs
  doc: "Test primer pairs.  Will test all input hits files\nthat are forward and reverse\
    \ primers.  Hits files must\nhave matching sequences.  The worse scoring primer\
    \ of\nthe pair dictates amplification success. [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --primer_pairs
- id: in_output_dir
  doc: "Specify base output directory for taxa summary.  A log\nfile be output to\
    \ this directory.  Taxonomy graphs and\ntext summaries will be generated in separated\n\
    subdirectories from the main output directory.\n[default: .]"
  type: File?
  inputBinding:
    prefix: --output_dir
- id: in_score_type
  doc: "Value to use from primer hits file to determine a\ngivenprimer's amplification\
    \ success.  Valid choices\nare weighted_score, overall_mismatches, tp_mismatches.\n\
    Gibbs energy scores not currently implemented\n[default: weighted_score]"
  type: File?
  inputBinding:
    prefix: --score_type
- id: in_score_threshold
  doc: "If primer has score at or below this parameter, the\nprimer amplification\
    \ is considered to be successful\n[default: 1.0]"
  type: double?
  inputBinding:
    prefix: --score_threshold
- id: in_hits_fps
  doc: "Target primer hits files to generate linkers against.\nSeparate multiple files\
    \ with a colon. [REQUIRED]"
  type: string?
  inputBinding:
    prefix: --hits_fps
- id: in_tax_a_fp
  doc: "Taxonomy mapping file. [REQUIRED]\n"
  type: File?
  inputBinding:
    prefix: --taxa_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Specify base output directory for taxa summary.  A log\nfile be output to\
    \ this directory.  Taxonomy graphs and\ntext summaries will be generated in separated\n\
    subdirectories from the main output directory.\n[default: .]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- taxa_coverage.py
