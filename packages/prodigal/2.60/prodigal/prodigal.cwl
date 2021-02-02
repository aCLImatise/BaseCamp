class: CommandLineTool
id: ../../../prodigal.cwl
inputs:
- id: in_write_protein_translations
  doc: ':  Write protein translations to the selected file.'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_closed_ends_allow
  doc: ':  Closed ends.  Do not allow genes to run off edges.'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_write_nucleotide_sequences
  doc: ':  Write nucleotide sequences of genes to the selected file.'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_select_output_format
  doc: ':  Select output format (gbk, gff, or sco).  Default is gbk.'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_specify_translation_table
  doc: ':  Specify a translation table to use (default 11).'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_specify_input_file
  doc: ':  Specify input file (default reads from stdin).'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_treat_runs_build
  doc: ":  Treat runs of n's as masked sequence and do not build genes across"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_specify_output_file
  doc: ':  Specify output file (default writes to stdout).'
  type: File
  inputBinding:
    prefix: -o
- id: in_select_procedure_single
  doc: ':  Select procedure (single or meta).  Default is single.'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_run_quietly_suppress
  doc: ':  Run quietly (suppress normal stderr output).'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_write_potential_genes
  doc: ':  Write all potential genes (with scores) to the selected file.'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_write_training_file
  doc: ":  Write a training file (if none exists); otherwise, read and use\nthe specified\
    \ training file."
  type: boolean
  inputBinding:
    prefix: -t
- id: in_print_version_number
  doc: ':  Print version number and exit.'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_file
  doc: ':  Specify output file (default writes to stdout).'
  type: File
  outputBinding:
    glob: $(inputs.in_specify_output_file)
cwlVersion: v1.1
baseCommand:
- prodigal
