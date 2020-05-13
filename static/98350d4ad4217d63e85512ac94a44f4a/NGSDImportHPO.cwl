class: CommandLineTool
id: NGSDImportHPO.cwl
inputs:
- id: obo
  doc: HPO ontology file from 'http://purl.obolibrary.org/obo/hp.obo'.
  type: File
  inputBinding:
    prefix: -obo
- id: an_no
  doc: HPO annotations file from 'http://compbio.charite.de/jenkins/job/hpo.annotations.monthly/lastStableBuild/artifact/annotation/ALL_SOURCES_ALL_FREQUENCIES_diseases_to_genes_to_phenotypes.txt'
  type: File
  inputBinding:
    prefix: -anno
- id: omim
  doc: "OMIM 'morbidmap.txt' file for additional disease-gene information, from 'https://omim.org/downloads/'.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -omim
- id: clin_var
  doc: "ClinVar VCF file for additional disease-gene information. Download and unzip\
    \ from 'ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/vcf_GRCh37/archive_2.0/2019/clinvar_20191111.vcf.gz'.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -clinvar
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: force
  doc: "If set, overwrites old data. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -force
- id: debug
  doc: "Enables debug output Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -debug
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
- NGSDImportHPO
