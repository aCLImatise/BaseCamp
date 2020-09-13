version 1.0

task A5Pipelinepl {
  input {
    Boolean? meta_genome
    Boolean? debug
    Int? threads
    Boolean? preprocessed
    Int? end
    Int? begin
    String lib_file
    String out_base
  }
  command <<<
    a5_pipeline_pl \
      ~{lib_file} \
      ~{out_base} \
      ~{if (meta_genome) then "--metagenome" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (preprocessed) then "--preprocessed" else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(begin) then ("--begin " +  '"' + begin + '"') else ""}
  >>>
  parameter_meta {
    meta_genome: ""
    debug: ""
    threads: ""
    preprocessed: ""
    end: ""
    begin: ""
    lib_file: ""
    out_base: ""
  }
  output {
    File out_stdout = stdout()
  }
}