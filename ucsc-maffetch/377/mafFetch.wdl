version 1.0

task MafFetch {
  input {
    String db
    String table
    String over_bed
  }
  command <<<
    mafFetch \
      ~{db} \
      ~{table} \
      ~{over_bed}
  >>>
  parameter_meta {
    db: ""
    table: ""
    over_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}