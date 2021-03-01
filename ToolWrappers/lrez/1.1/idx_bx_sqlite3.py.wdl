version 1.0

task IdxBxSqlite3py {
  input {
    File? basic
    File? idx
    Boolean? gz
    String? mode
  }
  command <<<
    idx_bx_sqlite3_py \
      ~{if defined(basic) then ("--basic " +  '"' + basic + '"') else ""} \
      ~{if defined(idx) then ("--idx " +  '"' + idx + '"') else ""} \
      ~{if (gz) then "--gz" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    basic: "barcoded Fastq file from reads obtained with\\nlongranger basic"
    idx: "output indexed file"
    gz: "fastq is zipped"
    mode: "mode of storage (shelve/sqlite)"
  }
  output {
    File out_stdout = stdout()
    File out_idx = "${in_idx}"
  }
}