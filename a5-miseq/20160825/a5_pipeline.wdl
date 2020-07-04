version 1.0

task A5Pipeline.pl {
  input {
    String? begin
    String? end
    Boolean? preprocessed
    String? threads
    Boolean? debug
    Boolean? meta_genome
    String lib_file
    String out_base
  }
  command <<<
    a5_pipeline.pl \
      ~{lib_file} \
      ~{out_base} \
      ~{if defined(begin) then ("--begin " +  '"' + begin + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{true="--preprocessed" false="" preprocessed} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--metagenome" false="" meta_genome}
  >>>
  parameter_meta {
    begin: ""
    end: ""
    preprocessed: ""
    threads: ""
    debug: ""
    meta_genome: ""
    lib_file: ""
    out_base: ""
  }
}