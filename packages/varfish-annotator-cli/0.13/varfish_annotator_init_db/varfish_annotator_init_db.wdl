version 1.0

task VarfishannotatorInitdb {
  input {
    Boolean? clin_var_path
    Boolean? db_release_info
    Boolean? ex_ac_path
    Boolean? g_nomad_exo_mes_path
    Boolean? g_nomad_genomes_path
    Boolean? region
    Boolean? thousand_genomes_path
    String in_it_db
  }
  command <<<
    varfish_annotator init_db \
      ~{in_it_db} \
      ~{if (clin_var_path) then "--clinvar-path" else ""} \
      ~{if (db_release_info) then "--db-release-info" else ""} \
      ~{if (ex_ac_path) then "--exac-path" else ""} \
      ~{if (g_nomad_exo_mes_path) then "--gnomad-exomes-path" else ""} \
      ~{if (g_nomad_genomes_path) then "--gnomad-genomes-path" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (thousand_genomes_path) then "--thousand-genomes-path" else ""}
  >>>
  parameter_meta {
    clin_var_path: "Path to Clinvar TSV file(s) to use for import, see documentation for\\nmore information"
    db_release_info: "Provide database release information as \\\"$db:$release\\\" for storage in DB"
    ex_ac_path: "Path to ExAC VCF file to use for import, see documentation for more\\ninformation"
    g_nomad_exo_mes_path: "Path to gnomAD exomes VCF file to use for import, see documentation for\\nmore information"
    g_nomad_genomes_path: "Path to gnomAD genomes VCF file to use for import, see documentation for\\nmore information"
    region: "Genomic region CHR:START-END (1-based) to import"
    thousand_genomes_path: "Path to 1000 genomes VCF file to use for import, see documentation for\\nmore information\\n"
    in_it_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}