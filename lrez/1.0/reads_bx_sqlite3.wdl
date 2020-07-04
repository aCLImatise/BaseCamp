version 1.0

task ReadsBxSqlite3.py {
  input {
    String? fast_q
    String? idx
    String? bdx
    Boolean? gz
    String? mode
  }
  command <<<
    reads_bx_sqlite3.py \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(idx) then ("--idx " +  '"' + idx + '"') else ""} \
      ~{if defined(bdx) then ("--bdx " +  '"' + bdx + '"') else ""} \
      ~{true="--gz" false="" gz} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  parameter_meta {
    fast_q: "gzipped barcoded Fastq file from reads obtained with longranger basic"
    idx: "barcodes index file"
    bdx: "barcodes list"
    gz: "fastq is zipped"
    mode: "mode of storage (shelve/sqlite)"
  }
}