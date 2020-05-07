class: CommandLineTool
id: remove_reads_exon_exon_fastq.py.cwl
inputs:
- id: input_fast_q
  doc: The input FASTQ file containing the reads.
  type: string
  inputBinding:
    prefix: --input_fastq
- id: input_fusions
  doc: The input file containing the list of candidate fusion genes.
  type: string
  inputBinding:
    prefix: --input_fusions
- id: input_transcriptome
  doc: The input MAP file containing the reads mapping on transcriptome.
  type: string
  inputBinding:
    prefix: --input_transcriptome
- id: output_fast_q
  doc: The output FASTQ file containing all reads which have their mate mapping on
    the candidate fusion genes.
  type: string
  inputBinding:
    prefix: --output_fastq
- id: log
  doc: The output log file.
  type: string
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_reads_exon_exon_fastq.py
