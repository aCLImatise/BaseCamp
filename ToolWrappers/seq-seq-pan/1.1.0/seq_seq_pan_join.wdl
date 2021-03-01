version 1.0

task SeqseqpanJoin {
  input {
    Boolean? quiet
    Int? order
    File? output_path
    File? name
    File? x_mfa
    Int? x_mfa_two
    String seq_seq_pando_tpy
    String join
  }
  command <<<
    seq_seq_pan join \
      ~{seq_seq_pando_tpy} \
      ~{join} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(x_mfa) then ("--xmfa " +  '"' + x_mfa + '"') else ""} \
      ~{if defined(x_mfa_two) then ("--xmfa_two " +  '"' + x_mfa_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seq-seq-pan:1.1.0--py_1"
  }
  parameter_meta {
    quiet: "Suppress warnings."
    order: "Ordering of blocks in XMFA/FASTA output (0,1,2,...)\\n[default: 0]"
    output_path: "path to output directory"
    name: "File prefix and sequence header for output FASTA /\\nXFMA file"
    x_mfa: "XMFA input file"
    x_mfa_two: "XMFA file to be joined with input file.\\n"
    seq_seq_pando_tpy: ""
    join: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_name = "${in_name}"
  }
}