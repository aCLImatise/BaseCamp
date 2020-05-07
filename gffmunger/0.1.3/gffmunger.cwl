class: CommandLineTool
id: gffmunger.cwl
inputs:
- id: move_polypeptide_an_not
  doc: transfer annotations from polypeptides to the feature (e.g. mRNA) they derive
    from
  type: string
  inputBinding:
    position: 0
- id: 'null'
  doc: do nothing
  type: string
  inputBinding:
    position: 1
- id: command
  doc: Command(s) defining how the GFF should be munged
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Turn on debugging [False]
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Suppress messages & warnings [False]
  type: boolean
  inputBinding:
    prefix: --quiet
- id: no_validate
  doc: Do not validate the input GFF3 [False]
  type: boolean
  inputBinding:
    prefix: --no-validate
- id: force
  doc: Force writing of output file, even if it already exists [False]
  type: boolean
  inputBinding:
    prefix: --force
- id: fast_a_file
  doc: Read FASTA from separate file instead of GFF3 input
  type: string
  inputBinding:
    prefix: --fasta-file
- id: input_file
  doc: Read GFF3 from file instead of STDIN
  type: string
  inputBinding:
    prefix: --input-file
- id: output_file
  doc: Write GFF3 to file instead of STDOUT
  type: string
  inputBinding:
    prefix: --output-file
- id: config
  doc: Config file [/tmp/tmpy8af47fk/config/gffmunger-config.yml]
  type: string
  inputBinding:
    prefix: --config
- id: genome_tools
  doc: genometools path (override path in config)
  type: string
  inputBinding:
    prefix: --genometools
outputs: []
cwlVersion: v1.1
baseCommand:
- gffmunger
