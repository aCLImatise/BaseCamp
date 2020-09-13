version 1.0

task Hmmconvert {
  input {
    Boolean? ascii_output_models
    Boolean? binary_output_models
    Boolean? hmmer_output_backward
    File? out_fmt
    Boolean? options
  }
  command <<<
    hmmconvert \
      ~{if (ascii_output_models) then "-a" else ""} \
      ~{if (binary_output_models) then "-b" else ""} \
      ~{if (hmmer_output_backward) then "-2" else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    ascii_output_models: ": ascii:  output models in HMMER3 ASCII format  [default]"
    binary_output_models: ": binary: output models in HMMER3 binary format"
    hmmer_output_backward: ": HMMER2: output backward compatible HMMER2 ASCII format (ls mode)"
    out_fmt: ": choose output legacy 3.x file formats by name, such as '3/a'"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_fmt = "${in_out_fmt}"
  }
}