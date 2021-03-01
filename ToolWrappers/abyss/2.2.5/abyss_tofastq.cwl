class: CommandLineTool
id: abyss_tofastq.cwl
inputs:
- id: in_cat
  doc: concatenate the records [default]
  type: boolean?
  inputBinding:
    prefix: --cat
- id: in_interleave
  doc: interleave the records
  type: boolean?
  inputBinding:
    prefix: --interleave
- id: in_fast_q
  doc: output FASTQ format [default]
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_fast_a
  doc: output FASTA format
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_bx
  doc: copy SAM BX tag to output FASTA comment
  type: boolean?
  inputBinding:
    prefix: --bx
- id: in_chastity
  doc: discard unchaste reads [default]
  type: boolean?
  inputBinding:
    prefix: --chastity
- id: in_no_chastity
  doc: do not discard unchaste reads
  type: boolean?
  inputBinding:
    prefix: --no-chastity
- id: in_trim_masked
  doc: trim masked bases from the ends of reads
  type: boolean?
  inputBinding:
    prefix: --trim-masked
- id: in_no_trim_masked
  doc: "do not trim masked bases from the ends\nof reads [default]"
  type: boolean?
  inputBinding:
    prefix: --no-trim-masked
- id: in_trim_quality
  doc: "trim bases from the ends of reads whose\nquality is less than the threshold"
  type: string?
  inputBinding:
    prefix: --trim-quality
- id: in_standard_quality
  doc: "zero quality is `!' (33)\ndefault for FASTQ and SAM files"
  type: boolean?
  inputBinding:
    prefix: --standard-quality
- id: in_illumina_quality
  doc: "zero quality is `@' (64)\ndefault for qseq and export files"
  type: boolean?
  inputBinding:
    prefix: --illumina-quality
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- abyss-tofastq
