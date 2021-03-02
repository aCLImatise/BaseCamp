class: CommandLineTool
id: CIRCexplorer2_annotate.cwl
inputs:
- id: in_ref
  doc: Gene annotation.
  type: string?
  inputBinding:
    prefix: --ref
- id: in_genome
  doc: Genome FASTA file.
  type: File?
  inputBinding:
    prefix: --genome
- id: in_bed
  doc: Input file.
  type: File?
  inputBinding:
    prefix: --bed
- id: in_output
  doc: "Output file.\n[default: circularRNA_known.txt]"
  type: File?
  inputBinding:
    prefix: --output
- id: in_no_fix
  doc: No-fix mode (useful for species with poor gene annotations).
  type: boolean?
  inputBinding:
    prefix: --no-fix
- id: in_low_confidence
  doc: Extract low confidence circRNAs.
  type: boolean?
  inputBinding:
    prefix: --low-confidence
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file.\n[default: circularRNA_known.txt]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- annotate
