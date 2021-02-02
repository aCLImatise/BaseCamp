version 1.0

task Convert2blastmask {
  input {
    String? masking_algorithm
  }
  command <<<
    convert2blastmask \
      ~{if defined(masking_algorithm) then ("-masking_algorithm " +  '"' + masking_algorithm + '"') else ""}
  >>>
  parameter_meta {
    masking_algorithm: "[-version]"
  }
  output {
    File out_stdout = stdout()
  }
}