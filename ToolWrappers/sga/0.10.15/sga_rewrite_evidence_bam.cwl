class: CommandLineTool
id: sga_rewrite_evidence_bam.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_fast_q
  doc: parse the read names and sequences from the fastq file in F (required)
  type: File
  inputBinding:
    prefix: --fastq
- id: in_merge_bam
  doc: merge the evidence BAM alignments with the alignments in F
  type: File
  inputBinding:
    prefix: --merge-bam
- id: in_outfile
  doc: write the new BAM file to F
  type: File
  inputBinding:
    prefix: --outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- rewrite-evidence-bam
