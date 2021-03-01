version 1.0

task Athenameta {
  input {
    File? config
    Boolean? check_prereqs
    Boolean? test
    Boolean? force_reads
    Int? threads
  }
  command <<<
    athena_meta \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (check_prereqs) then "--check_prereqs" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (force_reads) then "--force_reads" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "input JSON config file for run, NOTE:\\ndirname(config.json) specifies root output directory"
    check_prereqs: "test if external deps visible in environment"
    test: "run tiny assembly test to check setup and prereqs"
    force_reads: "proceed with subassembly even if input *bam and *fastq do\\nnot pass QC"
    threads: "number of multiprocessing threads"
  }
  output {
    File out_stdout = stdout()
  }
}