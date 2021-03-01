version 1.0

task ReadsBxSqlite3py {
  input {
    File? fast_q
    File? idx
    String? bdx
    Boolean? gz
    String? mode
  }
  command <<<
    reads_bx_sqlite3_py \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(idx) then ("--idx " +  '"' + idx + '"') else ""} \
      ~{if defined(bdx) then ("--bdx " +  '"' + bdx + '"') else ""} \
      ~{if (gz) then "--gz" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "gzipped barcoded Fastq file from reads obtained with\\nlongranger basic"
    idx: "barcodes index file"
    bdx: "barcodes list"
    gz: "fastq is zipped"
    mode: "mode of storage (shelve/sqlite)"
  }
  output {
    File out_stdout = stdout()
  }
}