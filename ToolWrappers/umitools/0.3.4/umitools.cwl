class: CommandLineTool
id: umitools.cwl
inputs:
- id: in_subcommand
  doc: "See https://github.com/weng-lab/umitools for more information.\nFor UMI RNA-seq:\
    \ First, use umitools reformat_fastq to identify\nUMIs in UMI RNA-seq. Then, use\
    \ umitools mark_duplicates to mark\nPCR duplicates. For UMI small RNA-seq: Use\
    \ umitools\nreformat_sra_fastq to identify UMIs and PCR duplicates. To\nsimulate\
    \ UMIs, use umitools simulate."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- umitools
