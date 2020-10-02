class: CommandLineTool
id: VariantAnnotateFrequency.cwl
inputs:
- id: in_in
  doc: Input variant list to annotate in VCF or GSvar format.
  type: File
  inputBinding:
    prefix: -in
- id: in_bam
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -bam
- id: in_out
  doc: Output variant list file name (VCF or GSvar).
  type: File
  inputBinding:
    prefix: -out
- id: in_depth
  doc: "Annotate an additional column containing the depth.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -depth
- id: in_mapq_zero
  doc: "Annotate an additional column containing the percentage of mapq 0 reads.\n\
    Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -mapq0
- id: in_name
  doc: "Column header prefix in output file.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -name
- id: in_ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -ref
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output variant list file name (VCF or GSvar).
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_name
  doc: "Column header prefix in output file.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_name)
cwlVersion: v1.1
baseCommand:
- VariantAnnotateFrequency
