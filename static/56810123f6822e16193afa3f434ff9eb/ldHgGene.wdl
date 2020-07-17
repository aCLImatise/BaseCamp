version 1.0

task LdHgGene {
  input {
    Boolean? implied_stop_after_cds
    String database
    String table
    File file
  }
  command <<<
    ldHgGene \
      ~{database} \
      ~{table} \
      ~{file} \
      ~{true="-impliedStopAfterCds" false="" implied_stop_after_cds}
  >>>
  parameter_meta {
    implied_stop_after_cds: "- implied stop codon in GFF/GTF after CDS"
    database: ""
    table: ""
    file: ""
  }
}