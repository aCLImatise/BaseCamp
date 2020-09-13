version 1.0

task Hmmfetch2 {
  input {
    Boolean? interpret_hmm_name
    Boolean? options
    String hmm_fetch
    String hmm_file
    String hmm_name
  }
  command <<<
    hmmfetch2 \
      ~{hmm_fetch} \
      ~{hmm_file} \
      ~{hmm_name} \
      ~{if (interpret_hmm_name) then "-n" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    interpret_hmm_name: ": interpret <HMM name> instead as an HMM number (0..nhmm-1)"
    options: ""
    hmm_fetch: ""
    hmm_file: ""
    hmm_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}