class: CommandLineTool
id: vcf2fasta.cwl
inputs:
- id: in_reference
  doc: Use this reference when decomposing samples.
  type: string?
  inputBinding:
    prefix: --reference
- id: in_prefix
  doc: Affix this output prefix to each file, none by default
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_default_ploidy
  doc: Set a default ploidy for samples which do not have information in the first
    record (2).
  type: long?
  inputBinding:
    prefix: --default-ploidy
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Affix this output prefix to each file, none by default
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- vcf2fasta
