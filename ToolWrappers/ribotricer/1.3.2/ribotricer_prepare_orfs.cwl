class: CommandLineTool
id: ribotricer_prepare_orfs.cwl
inputs:
- id: in_gtf
  doc: Path to GTF file  [required]
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_fast_a
  doc: Path to FASTA file  [required]
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_prefix
  doc: Prefix to output file  [required]
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_min_orf_length
  doc: "The minimum length (nts) of ORF to include\n[default: 60]"
  type: long?
  inputBinding:
    prefix: --min_orf_length
- id: in_start_codons
  doc: "Comma separated list of start codons  [default:\nATG]"
  type: string?
  inputBinding:
    prefix: --start_codons
- id: in_stop_codons
  doc: "Comma separated list of stop codons  [default:\nTAG,TAA,TGA]"
  type: string?
  inputBinding:
    prefix: --stop_codons
- id: in_longest
  doc: "Choose the most upstream start codon if multiple\nin frame ones exist"
  type: boolean?
  inputBinding:
    prefix: --longest
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Prefix to output file  [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- ribotricer
- prepare-orfs
