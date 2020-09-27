class: CommandLineTool
id: gffmunger.cwl
inputs:
- id: in_verbose
  doc: Turn on debugging [False]
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Suppress messages & warnings [False]
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_no_validate
  doc: Do not validate the input GFF3 [False]
  type: boolean
  inputBinding:
    prefix: --no-validate
- id: in_force
  doc: Force writing of output file, even if it already exists [False]
  type: File
  inputBinding:
    prefix: --force
- id: in_fast_a_file
  doc: Read FASTA from separate file instead of GFF3 input
  type: File
  inputBinding:
    prefix: --fasta-file
- id: in_input_file
  doc: Read GFF3 from file instead of STDIN
  type: File
  inputBinding:
    prefix: --input-file
- id: in_output_file
  doc: Write GFF3 to file instead of STDOUT
  type: File
  inputBinding:
    prefix: --output-file
- id: in_config
  doc: Config file [/usr/local/config/gffmunger-config.yml]
  type: File
  inputBinding:
    prefix: --config
- id: in_genome_tools
  doc: genometools path (override path in config)
  type: File
  inputBinding:
    prefix: --genometools
- id: in_move_polypeptide_an_not
  doc: "transfer annotations from polypeptides to the\nfeature (e.g. mRNA) they derive\
    \ from"
  type: string
  inputBinding:
    position: 0
- id: in_null
  doc: do nothing
  type: string
  inputBinding:
    position: 1
- id: in_command
  doc: Command(s) defining how the GFF should be munged
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Force writing of output file, even if it already exists [False]
  type: File
  outputBinding:
    glob: $(inputs.in_force)
- id: out_output_file
  doc: Write GFF3 to file instead of STDOUT
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- gffmunger
