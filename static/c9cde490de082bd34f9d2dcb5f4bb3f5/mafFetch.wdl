version 1.0

task MafFetch {
  input {
    String db
    String table
    String over_bed
    String maf_out
  }
  command <<<
    mafFetch \
      ~{db} \
      ~{table} \
      ~{over_bed} \
      ~{maf_out}
  >>>
  parameter_meta {
    db: ""
    table: ""
    over_bed: ""
    maf_out: ""
  }
}