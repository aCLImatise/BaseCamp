class: CommandLineTool
id: NGSDImportHPO.cwl
inputs:
- id: in_obo
  doc: HPO ontology file from 'http://purl.obolibrary.org/obo/hp.obo'.
  type: File?
  inputBinding:
    prefix: -obo
- id: in_an_no
  doc: HPO annotations file from 'http://compbio.charite.de/jenkins/job/hpo.annotations/lastSuccessfulBuild/artifact/util/annotation/phenotype_to_genes.txt'
  type: File?
  inputBinding:
    prefix: -anno
- id: in_omim
  doc: "OMIM 'morbidmap.txt' file for additional disease-gene information, from 'https://omim.org/downloads/'.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -omim
- id: in_clin_var
  doc: "ClinVar VCF file for additional disease-gene information. Download and unzip\
    \ from 'ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/vcf_GRCh37/archive_2.0/2020/clinvar_20200506.vcf.gz'.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -clinvar
- id: in_hgmd
  doc: "HGMD phenobase file (Manually download and unzip 'hgmd_phenbase-2020.2.dump').\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -hgmd
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_force
  doc: "If set, overwrites old data.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_debug
  doc: "Enables debug output\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -debug
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
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- NGSDImportHPO
