version 1.0

task GenePredToGtf {
  input {
    Boolean? utr
    Boolean? honor_cds_stat
    String? source
    Boolean? add_comments
    String database
    String gene_pred_table
  }
  command <<<
    genePredToGtf \
      ~{database} \
      ~{gene_pred_table} \
      ~{if (utr) then "-utr" else ""} \
      ~{if (honor_cds_stat) then "-honorCdsStat" else ""} \
      ~{if defined(source) then ("-source " +  '"' + source + '"') else ""} \
      ~{if (add_comments) then "-addComments" else ""}
  >>>
  parameter_meta {
    utr: "- Add 5UTR and 3UTR features"
    honor_cds_stat: "- use cdsStartStat/cdsEndStat when defining start/end\\ncodon records"
    source: "set source name to use"
    add_comments: "- Add comments before each set of transcript records.\\nallows for easier visual inspection"
    database: ""
    gene_pred_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}