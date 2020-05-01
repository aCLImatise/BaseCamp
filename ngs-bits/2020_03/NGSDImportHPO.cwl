#!/usr/bin/env cwl-runner

baseCommand:
- NGSDImportHPO
class: CommandLineTool
cwlVersion: v1.0
id: ngsdimporthpo
inputs:
- doc: HPO ontology file from 'http://purl.obolibrary.org/obo/hp.obo'.
  id: obo
  inputBinding:
    prefix: -obo
  type: File
- doc: HPO annotations file from 'http://compbio.charite.de/jenkins/job/hpo.annotations.monthly/lastStableBuild/artifact/annotation/ALL_SOURCES_ALL_FREQUENCIES_diseases_to_genes_to_phenotypes.txt'
  id: an_no
  inputBinding:
    prefix: -anno
  type: File
- doc: "OMIM 'morbidmap.txt' file for additional disease-gene information, from 'https://omim.org/downloads/'.\
    \ Default value: ''"
  id: omim
  inputBinding:
    prefix: -omim
  type: File
- doc: "ClinVar VCF file for additional disease-gene information. Download and unzip\
    \ from 'ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/vcf_GRCh37/archive_2.0/2019/clinvar_20191111.vcf.gz'.\
    \ Default value: ''"
  id: clin_var
  inputBinding:
    prefix: -clinvar
  type: File
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: "If set, overwrites old data. Default value: 'false'"
  id: force
  inputBinding:
    prefix: -force
  type: boolean
- doc: "Enables debug output Default value: 'false'"
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
