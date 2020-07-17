version 1.0

task Hmmconvert {
  input {
    Boolean? ascii_output_models
    Boolean? binary_output_models
    Boolean? hmmer_output_mode
    String? out_fmt
    Boolean? options
  }
  command <<<
    hmmconvert \
      ~{true="-a" false="" ascii_output_models} \
      ~{true="-b" false="" binary_output_models} \
      ~{true="-2" false="" hmmer_output_mode} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    ascii_output_models: ": ascii:  output models in HMMER3 ASCII format  [default]"
    binary_output_models: ": binary: output models in HMMER3 binary format"
    hmmer_output_mode: ": HMMER2: output backward compatible HMMER2 ASCII format (ls mode)"
    out_fmt: ": choose output legacy 3.x file formats by name, such as '3/a'"
    options: ""
  }
}