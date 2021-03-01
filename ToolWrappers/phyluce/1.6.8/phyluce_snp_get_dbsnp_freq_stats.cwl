class: CommandLineTool
id: phyluce_snp_get_dbsnp_freq_stats.cwl
inputs:
- id: in_dbsnp
  doc: CSV input from dbSNP giving SNP positions within UCE
  type: string?
  inputBinding:
    prefix: --dbsnp
- id: in_xml
  doc: The XML file holiding locus data from dbSNP
  type: File?
  inputBinding:
    prefix: --xml
- id: in_output
  doc: The output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_two
  doc: The output file
  type: File?
  inputBinding:
    prefix: --output2
- id: in_dupe_file
  doc: The path to a lastz file of lastz-against-self results
  type: File?
  inputBinding:
    prefix: --dupefile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_two
  doc: The output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_two)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_get_dbsnp_freq_stats
