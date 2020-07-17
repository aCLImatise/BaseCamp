version 1.0

task SqStoreCreate {
  input {
    String? technology_status
    String? o
    String? minlength
    String? genome_size
    String? coverage
    Array[File] pac_bio_raw
  }
  command <<<
    sqStoreCreate \
      ~{if defined(technology_status) then ("-technology-status " +  '"' + technology_status + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(minlength) then ("-minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(genome_size) then ("-genomesize " +  '"' + genome_size + '"') else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(pac_bio_raw) then ("-pacbio-raw " +  '"' + pac_bio_raw + '"') else ""}
  >>>
  parameter_meta {
    technology_status: "seqFile1 [seqFile2] [...] "
    o: ""
    minlength: ""
    genome_size: ""
    coverage: ""
    pac_bio_raw: ""
  }
}