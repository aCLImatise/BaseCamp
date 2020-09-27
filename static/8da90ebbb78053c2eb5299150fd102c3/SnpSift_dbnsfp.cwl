class: CommandLineTool
id: SnpSift_dbnsfp.cwl
inputs:
- id: in_annotate_fields_even_database
  doc: ": Annotate fields, even if the database has an empty value (annotates using\
    \ '.' for empty)."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_collapse
  doc: ': Collapse repeated values from dbNSFP. Default: false'
  type: boolean
  inputBinding:
    prefix: -collapse
- id: in_db
  doc: ': Path to dbNSFP database file (bgzip + tabix).'
  type: File
  inputBinding:
    prefix: -db
- id: in__genome_version
  doc: ': Genome version.'
  type: string
  inputBinding:
    prefix: -g
- id: in_no_collapse
  doc: ": Switch off 'collapsing' repeated values from dbNSFP. Default: true"
  type: boolean
  inputBinding:
    prefix: -noCollapse
- id: in_annotate_fields_even_there
  doc: ": Annotate fields even if there are no database matching entries (annotates\
    \ using '.')."
  type: boolean
  inputBinding:
    prefix: -m
- id: in__invert_
  doc: ": Invert 'fields to add' selection (i.e. use all fields except the ones specified\
    \ in option '-f')."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_comma_separated_list
  doc: ": A comma separated list of fields to add.\nDefault fields to add: Uniprot_acc,\
    \ Interpro_domain, SIFT_pred, Polyphen2_HDIV_pred, Polyphen2_HVAR_pred, LRT_pred,\
    \ MutationTaster_pred, GERP++_NR, GERP++_RS, phastCons100way_vertebrate, 1000Gp1_AF,\
    \ 1000Gp1_AFR_AF, 1000Gp1_EUR_AF, 1000Gp1_AMR_AF, 1000Gp1_ASN_AF, ESP6500_AA_AF,\
    \ ESP6500_EA_AF, MutationTaster_pred, MutationAssessor_pred, FATHMM_pred, PROVEAN_pred,\
    \ CADD_phred, MetaSVM_pred, 1000Gp3_AC, 1000Gp3_AF, 1000Gp3_AFR_AC, 1000Gp3_AFR_AF,\
    \ 1000Gp3_EUR_AC, 1000Gp3_EUR_AF, 1000Gp3_AMR_AC, 1000Gp3_AMR_AF, 1000Gp3_EAS_AC,\
    \ 1000Gp3_EAS_AF, 1000Gp3_SAS_AC, 1000Gp3_SAS_AF, ESP6500_AA_AC, ESP6500_AA_AF,\
    \ ESP6500_EA_AC, ESP6500_EA_AF, ExAC_AC, ExAC_AF, ExAC_Adj_AC, ExAC_Adj_AF, ExAC_AFR_AC,\
    \ ExAC_AFR_AF, ExAC_AMR_AC, ExAC_AMR_AF, ExAC_EAS_AC, ExAC_EAS_AF, ExAC_FIN_AC,\
    \ ExAC_FIN_AF, ExAC_NFE_AC, ExAC_NFE_AF, ExAC_SAS_AC, ExAC_SAS_AF"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_config_file_specify
  doc: ', -config <file>  : Specify config file'
  type: boolean
  inputBinding:
    prefix: -c
- id: in__debug
  doc: ': Debug.'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_download
  doc: ': Download database, if not available locally. Default: true.'
  type: boolean
  inputBinding:
    prefix: -download
- id: in_no_download
  doc: ': Do not download a database, if not available locally.'
  type: boolean
  inputBinding:
    prefix: -noDownload
- id: in_no_log
  doc: ': Do not report usage statistics to server.'
  type: boolean
  inputBinding:
    prefix: -noLog
- id: in__verbose
  doc: ': Verbose.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_d_bnsf_p
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_dot_vcf
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- dbnsfp
