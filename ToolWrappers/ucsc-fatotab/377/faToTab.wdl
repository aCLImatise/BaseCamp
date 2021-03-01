version 1.0

task FaToTab {
  input {
    String? type
    Boolean? keep_acc_suffix
    String in_filename
  }
  command <<<
    faToTab \
      ~{in_filename} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (keep_acc_suffix) then "-keepAccSuffix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: "sequence type, dna or protein, default is dna"
    keep_acc_suffix: "- don't strip dot version off of sequence id, keep as is"
    in_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}