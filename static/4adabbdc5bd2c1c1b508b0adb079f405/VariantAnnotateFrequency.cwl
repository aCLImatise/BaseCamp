class: CommandLineTool
id: VariantAnnotateFrequency.cwl
inputs:
- id: in
  doc: Input variant list to annotate in VCF or GSvar format.
  type: File
  inputBinding:
    prefix: -in
- id: bam
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -bam
- id: out
  doc: Output variant list file name (VCF or GSvar).
  type: File
  inputBinding:
    prefix: -out
- id: depth
  doc: "Annotate an additional column containing the depth. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -depth
- id: mapq0
  doc: "Annotate an additional column containing the percentage of mapq 0 reads. Default\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -mapq0
- id: name
  doc: "Column header prefix in output file. Default value: ''"
  type: string
  inputBinding:
    prefix: -name
- id: ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  type: File
  inputBinding:
    prefix: -ref
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- VariantAnnotateFrequency
