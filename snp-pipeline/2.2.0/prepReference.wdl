version 1.0

task PrepReference.sh {
  input {
    Boolean? force
    String? verbose
    String reference_file
  }
  command <<<
    prepReference.sh \
      ~{reference_file} \
      ~{true="--force" false="" force} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist and are newer than inputs (default: False)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    reference_file: "Relative or absolute path to the reference fasta file"
  }
}