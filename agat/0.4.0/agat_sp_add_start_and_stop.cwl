class: CommandLineTool
id: ../../../agat_sp_add_start_and_stop.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: fast_a
  doc: Input fasta file. Needed to check that CDS sequences start by start codon and
    stop by stop codon.
  type: string
  inputBinding:
    prefix: --fasta
- id: codon
  doc: Codon table to use. [default 1]
  type: string
  inputBinding:
    prefix: --codon
- id: output
  doc: Output gff file updated
  type: string
  inputBinding:
    prefix: --output
- id: verbose_debugging_purpose
  doc: Verbose for debugging purpose.
  type: boolean
  inputBinding:
    prefix: -v
- id: agat_sp_add_start_and_stop_do_tpl_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_add_start_and_stop.pl
