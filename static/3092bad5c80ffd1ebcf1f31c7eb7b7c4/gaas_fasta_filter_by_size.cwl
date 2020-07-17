class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_fasta_filter_by_size.pl.cwl
inputs:
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: size
  doc: Integer corresponding to a size in bp. Default value 1000. Sequence under the
    value will be discarded from the output.
  type: boolean
  inputBinding:
    prefix: --size
- id: output
  doc: Output fasta file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: gaas_fast_a_filer_by_size_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_filter_by_size.pl
