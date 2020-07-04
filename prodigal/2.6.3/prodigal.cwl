class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prodigal.cwl
inputs:
- id: write_protein_translations
  doc: ':  Write protein translations to the selected file.'
  type: boolean
  inputBinding:
    prefix: -a
- id: closed_ends_allow
  doc: ':  Closed ends.  Do not allow genes to run off edges.'
  type: boolean
  inputBinding:
    prefix: -c
- id: write_nucleotide_sequences
  doc: ':  Write nucleotide sequences of genes to the selected file.'
  type: boolean
  inputBinding:
    prefix: -d
- id: select_output_format
  doc: ':  Select output format (gbk, gff, or sco).  Default is gbk.'
  type: boolean
  inputBinding:
    prefix: -f
- id: specify_translation_table
  doc: ':  Specify a translation table to use (default 11).'
  type: boolean
  inputBinding:
    prefix: -g
- id: specify_fastagenbank_input
  doc: ':  Specify FASTA/Genbank input file (default reads from stdin).'
  type: boolean
  inputBinding:
    prefix: -i
- id: treat_runs_n
  doc: ":  Treat runs of N as masked sequence; don't build genes across them."
  type: boolean
  inputBinding:
    prefix: -m
- id: bypass_shinedalgarno_trainer
  doc: ':  Bypass Shine-Dalgarno trainer and force a full motif scan.'
  type: boolean
  inputBinding:
    prefix: -n
- id: specify_output_file
  doc: ':  Specify output file (default writes to stdout).'
  type: boolean
  inputBinding:
    prefix: -o
- id: select_procedure_single
  doc: ':  Select procedure (single or meta).  Default is single.'
  type: boolean
  inputBinding:
    prefix: -p
- id: run_quietly_suppress
  doc: ':  Run quietly (suppress normal stderr output).'
  type: boolean
  inputBinding:
    prefix: -q
- id: write_potential_genes
  doc: ':  Write all potential genes (with scores) to the selected file.'
  type: boolean
  inputBinding:
    prefix: -s
- id: write_training_file
  doc: ':  Write a training file (if none exists); otherwise, read and use the specified
    training file.'
  type: boolean
  inputBinding:
    prefix: -t
- id: print_version_number
  doc: ':  Print version number and exit.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- prodigal
