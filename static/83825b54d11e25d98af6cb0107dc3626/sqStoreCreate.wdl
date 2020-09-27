version 1.0

task SqStoreCreate {
  input {
    String? load_raw_reads
    String? minlength
    Int? genome_size
    String? coverage
    Int? technology_status
    Boolean? pac_bio_raw
  }
  command <<<
    sqStoreCreate \
      ~{if defined(load_raw_reads) then ("-o " +  '"' + load_raw_reads + '"') else ""} \
      ~{if defined(minlength) then ("-minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(genome_size) then ("-genomesize " +  '"' + genome_size + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(technology_status) then ("-technology-status " +  '"' + technology_status + '"') else ""} \
      ~{if (pac_bio_raw) then "-pacbio-raw" else ""}
  >>>
  parameter_meta {
    load_raw_reads: "load raw reads into new seqStore"
    minlength: "discard reads shorter than L"
    genome_size: "expected genome size, for keeping only the longest reads"
    coverage: "desired coverage in long reads"
    technology_status: "seqFile1 [seqFile2] [...]"
    pac_bio_raw: "-pacbio-corrected\\n-pacbio-trimmed\\n-pacbio-raw\\n-nanopore-raw\\n-nanopore-corrected\\n-nanopore-trimmed"
  }
  output {
    File out_stdout = stdout()
  }
}