version 1.0

task SqStoreCreate {
  input {
    String? load_raw_reads
    String? minlength
    Int? genome_size
    String? coverage
    Int? technology_status
    Boolean? pac_bio_raw
    Boolean? pac_bio_corrected
    Boolean? pac_bio_trimmed
    Boolean? nano_pore_raw
    Boolean? nano_pore_corrected
    Boolean? nano_pore_trimmed
  }
  command <<<
    sqStoreCreate \
      ~{if defined(load_raw_reads) then ("-o " +  '"' + load_raw_reads + '"') else ""} \
      ~{if defined(minlength) then ("-minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(genome_size) then ("-genomesize " +  '"' + genome_size + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(technology_status) then ("-technology-status " +  '"' + technology_status + '"') else ""} \
      ~{if (pac_bio_raw) then "-pacbio-raw" else ""} \
      ~{if (pac_bio_corrected) then "-pacbio-corrected" else ""} \
      ~{if (pac_bio_trimmed) then "-pacbio-trimmed" else ""} \
      ~{if (nano_pore_raw) then "-nanopore-raw" else ""} \
      ~{if (nano_pore_corrected) then "-nanopore-corrected" else ""} \
      ~{if (nano_pore_trimmed) then "-nanopore-trimmed" else ""}
  >>>
  parameter_meta {
    load_raw_reads: "load raw reads into new seqStore"
    minlength: "discard reads shorter than L"
    genome_size: "expected genome size, for keeping only the longest reads"
    coverage: "desired coverage in long reads"
    technology_status: "seqFile1 [seqFile2] [...]"
    pac_bio_raw: ""
    pac_bio_corrected: ""
    pac_bio_trimmed: ""
    nano_pore_raw: ""
    nano_pore_corrected: ""
    nano_pore_trimmed: ""
  }
  output {
    File out_stdout = stdout()
  }
}