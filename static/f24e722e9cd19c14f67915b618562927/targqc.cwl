class: CommandLineTool
id: targqc.cwl
inputs:
- id: in_fai
  doc: Path to fai fasta index - sort BAM and BED files, and
  type: File
  inputBinding:
    prefix: --fai
- id: in_padding
  doc: integer indicating the number of bases to extend each
  type: long
  inputBinding:
    prefix: --padding
- id: in_reuse
  doc: reuse intermediate non-empty files in the work dir
  type: boolean
  inputBinding:
    prefix: --reuse
- id: in_re_annotate
  doc: Re-annotate BED file with gene names, even if it's 4
  type: boolean
  inputBinding:
    prefix: --reannotate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- targqc
