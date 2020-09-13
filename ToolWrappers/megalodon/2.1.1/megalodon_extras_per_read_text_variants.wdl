version 1.0

task MegalodonExtrasPerReadTextVariants {
  input {
    File? out_filename
  }
  command <<<
    megalodon_extras per_read_text variants \
      ~{if defined(out_filename) then ("--out-filename " +  '"' + out_filename + '"') else ""}
  >>>
  parameter_meta {
    out_filename: "Output filename for text summary. Default: output into\\nmegalodon results directory\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}