version 1.0

task MegalodonExtrasPerReadTextModifiedBases {
  input {
    File? out_filename
    String output_dot
  }
  command <<<
    megalodon_extras per_read_text modified_bases \
      ~{output_dot} \
      ~{if defined(out_filename) then ("--out-filename " +  '"' + out_filename + '"') else ""}
  >>>
  parameter_meta {
    out_filename: "Output filename for text summary. Default: output into\\nmegalodon results directory\\n"
    output_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}