class: CommandLineTool
id: sga_rewrite_evidence_bam.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: fast_q
  doc: parse the read names and sequences from the fastq file in F (required)
  type: File
  inputBinding:
    prefix: --fastq
- id: merge_bam
  doc: merge the evidence BAM alignments with the alignments in F
  type: File
  inputBinding:
    prefix: --merge-bam
- id: outfile
  doc: write the new BAM file to F
  type: File
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- rewrite-evidence-bam
