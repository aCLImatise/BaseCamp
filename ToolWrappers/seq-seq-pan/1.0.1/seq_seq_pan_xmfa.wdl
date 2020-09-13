version 1.0

task SeqseqpanXmfa {
  input {
    Boolean? quiet
    Int? order
    File? output_path
    File? name
    File? xmfa_input_file
    String seq_seq_pando_tpy
    String var_6
  }
  command <<<
    seq_seq_pan xmfa \
      ~{seq_seq_pando_tpy} \
      ~{var_6} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(xmfa_input_file) then ("--xmfa " +  '"' + xmfa_input_file + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Suppress warnings."
    order: "Ordering of blocks in XMFA/FASTA output (0,1,2,...)\\n[default: 0]"
    output_path: "path to output directory"
    name: "File prefix and sequence header for output FASTA /\\nXFMA file"
    xmfa_input_file: "XMFA input file\\n"
    seq_seq_pando_tpy: ""
    var_6: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_name = "${in_name}"
  }
}