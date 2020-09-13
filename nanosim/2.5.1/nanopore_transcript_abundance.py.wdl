version 1.0

task NanoporeTranscriptAbundancepy {
  input {
    String? var_input
    String? compatibility
    String? em_iterations
    String? verbose
  }
  command <<<
    nanopore_transcript_abundance_py \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(compatibility) then ("--compatibility " +  '"' + compatibility + '"') else ""} \
      ~{if defined(em_iterations) then ("--em-iterations " +  '"' + em_iterations + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    compatibility: ""
    em_iterations: ""
    verbose: ""
  }
  output {
    File out_stdout = stdout()
  }
}