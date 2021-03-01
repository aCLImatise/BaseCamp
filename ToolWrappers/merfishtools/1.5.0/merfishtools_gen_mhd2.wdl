version 1.0

task MerfishtoolsGenmhd2 {
  input {
    Int? bits
    Int? one_bits
    String? not_expressed
  }
  command <<<
    merfishtools gen_mhd2 \
      ~{if defined(bits) then ("--bits " +  '"' + bits + '"') else ""} \
      ~{if defined(one_bits) then ("--onebits " +  '"' + one_bits + '"') else ""} \
      ~{if defined(not_expressed) then ("--not-expressed " +  '"' + not_expressed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bits: "Number of bits."
    one_bits: "Number of 1-bits."
    not_expressed: "Regular expression pattern for features that should be marked\\nas not expressed. This is useful to correctly model, e.g.,\\nmisidentification probes."
  }
  output {
    File out_stdout = stdout()
  }
}