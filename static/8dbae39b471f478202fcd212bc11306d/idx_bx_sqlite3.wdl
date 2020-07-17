version 1.0

task IdxBxSqlite3.py {
  input {
    String? basic
    String? idx
    Boolean? gz
    String? mode
  }
  command <<<
    idx_bx_sqlite3.py \
      ~{if defined(basic) then ("--basic " +  '"' + basic + '"') else ""} \
      ~{if defined(idx) then ("--idx " +  '"' + idx + '"') else ""} \
      ~{true="--gz" false="" gz} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  parameter_meta {
    basic: "barcoded Fastq file from reads obtained with longranger basic"
    idx: "output indexed file"
    gz: "fastq is zipped"
    mode: "mode of storage (shelve/sqlite)"
  }
}