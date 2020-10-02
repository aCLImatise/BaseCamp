class: CommandLineTool
id: nucamino_hiv1b.cwl
inputs:
- id: in_quiet
  doc: hide non-error information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_in_del_codon_opening_bonus
  doc: "bonus score when a indel\ncodon was opened (default:\n0)"
  type: long
  inputBinding:
    prefix: --indel-codon-opening-bonus
- id: in_in_del_codon_extension_bonus
  doc: "bonus score when a indel\ncodon was extended\n(default: 2)"
  type: long
  inputBinding:
    prefix: --indel-codon-extension-bonus
- id: in_stop_codon_penalty
  doc: "penalty score when a stop\ncodon was met (default: 4)"
  type: long
  inputBinding:
    prefix: --stop-codon-penalty
- id: in_gap_opening_penalty
  doc: "penalty score when a gap\nwas opened (default: 10)"
  type: long
  inputBinding:
    prefix: --gap-opening-penalty
- id: in_gap_extension_penalty
  doc: "penalty score when a gap\nwas extended (default: 2)"
  type: long
  inputBinding:
    prefix: --gap-extension-penalty
- id: in_go_routines
  doc: "number of goroutines the\nalignment will use. Use\nthe core number when\n\
    equals to 0 (default: 0)"
  type: long
  inputBinding:
    prefix: --goroutines
- id: in_output_format
  doc: "[tsv|json]    output format of the\nalignment result (default:\ntsv)"
  type: string
  inputBinding:
    prefix: --output-format
- id: in_input
  doc: "FASTA file contains one or\nmore DNA sequences\n(default: -)"
  type: File
  inputBinding:
    prefix: --input
- id: in_output_destination_thealignment
  doc: "output destination of the\nalignment results\n(default: -)"
  type: string
  inputBinding:
    prefix: --output
- id: in_ppr_of
  doc: "output pprof benchmark\nresult\n"
  type: boolean
  inputBinding:
    prefix: --pprof
- id: in_g__gene
  doc: -g, --gene=[GAG|POL|GP41]                      gene(s) the input
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nucamino
- hiv1b
