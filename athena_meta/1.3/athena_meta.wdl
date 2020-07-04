version 1.0

task AthenaMeta {
  input {
    String? config
    Boolean? check_prereqs
    Boolean? test
    Boolean? force_reads
    String? threads
  }
  command <<<
    athena-meta \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--check_prereqs" false="" check_prereqs} \
      ~{true="--test" false="" test} \
      ~{true="--force_reads" false="" force_reads} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    config: "input JSON config file for run, NOTE: dirname(config.json) specifies root output directory"
    check_prereqs: "test if external deps visible in environment"
    test: "run tiny assembly test to check setup and prereqs"
    force_reads: "proceed with subassembly even if input *bam and *fastq do not pass QC"
    threads: "number of multiprocessing threads"
  }
}