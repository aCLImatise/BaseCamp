class: CommandLineTool
id: NGSDExportAnnotationData.cwl
inputs:
- id: variants
  doc: Output variant list as VCF.
  type: File
  inputBinding:
    prefix: -variants
- id: genes
  doc: "Optional BED file containing the genes and the gene info (only germline).\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -genes
- id: reference
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  type: File
  inputBinding:
    prefix: -reference
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: max_af
  doc: "Determines the maximum allel frequency for the variants (default: 0.05). Default\
    \ value: '0.05'"
  type: double
  inputBinding:
    prefix: -maxAF
- id: gene_offset
  doc: "Defines the number of bases by which the region of each gene is extended.\
    \ Default value: '5000'"
  type: long
  inputBinding:
    prefix: -gene_offset
- id: chr
  doc: "Limit export to the given chromosome. Default value: ''"
  type: string
  inputBinding:
    prefix: -chr
- id: mode
  doc: "Determines the database which is exported. Default value: 'germline' Valid:\
    \ 'germline,somatic'"
  type: string
  inputBinding:
    prefix: -mode
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
- NGSDExportAnnotationData
