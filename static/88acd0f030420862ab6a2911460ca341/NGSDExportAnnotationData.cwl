class: CommandLineTool
id: NGSDExportAnnotationData.cwl
inputs:
- id: in_variants
  doc: Output variant list as VCF.
  type: File?
  inputBinding:
    prefix: -variants
- id: in_genes
  doc: "Optional BED file containing the genes and the gene info (only germline).\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -genes
- id: in_reference
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -reference
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_max_af
  doc: "Determines the maximum allel frequency for the variants (default: 0.05).\n\
    Default value: '0.05'"
  type: double?
  inputBinding:
    prefix: -maxAF
- id: in_gene_offset
  doc: "Defines the number of bases by which the region of each gene is extended.\n\
    Default value: '5000'"
  type: long?
  inputBinding:
    prefix: -gene_offset
- id: in_chr
  doc: "Limit export to the given chromosome.\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -chr
- id: in_mode
  doc: "Determines the database which is exported.\nDefault value: 'germline'\nValid:\
    \ 'germline,somatic'"
  type: string?
  inputBinding:
    prefix: -mode
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- NGSDExportAnnotationData
