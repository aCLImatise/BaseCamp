version 1.0

task SqStoreCreate {
  input {
    String? load_raw_reads
    String? minlength
    Int? genome_size
    String? coverage
    Array[File] pac_bio_raw
  }
  command <<<
    sqStoreCreate \
      ~{if defined(load_raw_reads) then ("-o " +  '"' + load_raw_reads + '"') else ""} \
      ~{if defined(minlength) then ("-minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(genome_size) then ("-genomesize " +  '"' + genome_size + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(pac_bio_raw) then ("-pacbio-raw " +  '"' + pac_bio_raw + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    load_raw_reads: "load raw reads into new seqStore"
    minlength: "discard reads shorter than L"
    genome_size: "expected genome size, for keeping only the longest reads"
    coverage: "desired coverage in long reads"
    pac_bio_raw: ""
  }
  output {
    File out_stdout = stdout()
  }
}