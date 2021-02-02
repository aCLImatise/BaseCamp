version 1.0

task AllocateEvidence {
  input {
    Boolean? displays_options_specific
  }
  command <<<
    AllocateEvidence \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
  }
  output {
    File out_stdout = stdout()
  }
}