class: CommandLineTool
id: gaas_fasta_checkProteins.pl.cwl
inputs:
- id: ref_file
  doc: Input fasta file that will be read. In general come from gffread output.
  type: string
  inputBinding:
    prefix: --reffile
- id: output
  doc: By default the result is written on screen at te fly. If you give an output
    it will writte the report in this file.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_checkProteins.pl
