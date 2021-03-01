version 1.0

task SnpSiftDbnsfp {
  input {
    Boolean? annotate_fields_has
    Boolean? collapse
    File? db
    String? _genome_version
    Boolean? no_collapse
    Boolean? annotate_fields_are
    Boolean? _invert_
    Boolean? comma_separated_list
    File? config
    Boolean? _debug
    Boolean? download
    Boolean? no_download
    Boolean? no_log
    Boolean? _verbose
    String? jar
    String java
    String d_bnsf_p
    File file_dot_vcf
  }
  command <<<
    SnpSift dbnsfp \
      ~{java} \
      ~{d_bnsf_p} \
      ~{file_dot_vcf} \
      ~{if (annotate_fields_has) then "-a" else ""} \
      ~{if (collapse) then "-collapse" else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(_genome_version) then ("-g " +  '"' + _genome_version + '"') else ""} \
      ~{if (no_collapse) then "-noCollapse" else ""} \
      ~{if (annotate_fields_are) then "-m" else ""} \
      ~{if (_invert_) then "-n" else ""} \
      ~{if (comma_separated_list) then "-f" else ""} \
      ~{if defined(config) then ("-config " +  '"' + config + '"') else ""} \
      ~{if (_debug) then "-d" else ""} \
      ~{if (download) then "-download" else ""} \
      ~{if (no_download) then "-noDownload" else ""} \
      ~{if (no_log) then "-noLog" else ""} \
      ~{if (_verbose) then "-v" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    annotate_fields_has: ": Annotate fields, even if the database has an empty value (annotates using '.' for empty)."
    collapse: ": Collapse repeated values from dbNSFP. Default: false"
    db: ": Path to dbNSFP database file (bgzip + tabix)."
    _genome_version: ": Genome version."
    no_collapse: ": Switch off 'collapsing' repeated values from dbNSFP. Default: true"
    annotate_fields_are: ": Annotate fields even if there are no database matching entries (annotates using '.')."
    _invert_: ": Invert 'fields to add' selection (i.e. use all fields except the ones specified in option '-f')."
    comma_separated_list: ": A comma separated list of fields to add.\\nDefault fields to add: Uniprot_acc, Interpro_domain, SIFT_pred, Polyphen2_HDIV_pred, Polyphen2_HVAR_pred, LRT_pred, MutationTaster_pred, GERP++_NR, GERP++_RS, phastCons100way_vertebrate, 1000Gp1_AF, 1000Gp1_AFR_AF, 1000Gp1_EUR_AF, 1000Gp1_AMR_AF, 1000Gp1_ASN_AF, ESP6500_AA_AF, ESP6500_EA_AF, MutationTaster_pred, MutationAssessor_pred, FATHMM_pred, PROVEAN_pred, CADD_phred, MetaSVM_pred, 1000Gp3_AC, 1000Gp3_AF, 1000Gp3_AFR_AC, 1000Gp3_AFR_AF, 1000Gp3_EUR_AC, 1000Gp3_EUR_AF, 1000Gp3_AMR_AC, 1000Gp3_AMR_AF, 1000Gp3_EAS_AC, 1000Gp3_EAS_AF, 1000Gp3_SAS_AC, 1000Gp3_SAS_AF, ESP6500_AA_AC, ESP6500_AA_AF, ESP6500_EA_AC, ESP6500_EA_AF, ExAC_AC, ExAC_AF, ExAC_Adj_AC, ExAC_Adj_AF, ExAC_AFR_AC, ExAC_AFR_AF, ExAC_AMR_AC, ExAC_AMR_AF, ExAC_EAS_AC, ExAC_EAS_AF, ExAC_FIN_AC, ExAC_FIN_AF, ExAC_NFE_AC, ExAC_NFE_AF, ExAC_SAS_AC, ExAC_SAS_AF"
    config: ": Specify config file"
    _debug: ": Debug."
    download: ": Download database, if not available locally. Default: true."
    no_download: ": Do not download a database, if not available locally."
    no_log: ": Do not report usage statistics to server."
    _verbose: ": Verbose."
    jar: ""
    java: ""
    d_bnsf_p: ""
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}