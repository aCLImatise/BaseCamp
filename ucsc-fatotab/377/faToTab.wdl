version 1.0

task FaToTab {
  input {
    String? type
    Boolean? keep_acc_suffix
    String in_filename
    String out_filename
  }
  command <<<
    faToTab \
      ~{in_filename} \
      ~{out_filename} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{true="-keepAccSuffix" false="" keep_acc_suffix}
  >>>
  parameter_meta {
    type: "sequence type, dna or protein, default is dna"
    keep_acc_suffix: "- don't strip dot version off of sequence id, keep as is"
    in_filename: ""
    out_filename: ""
  }
}