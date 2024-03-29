version 1.0

task SeqseqpanResolve {
  input {
    Boolean? quiet
    Int? order
    File? output_path
    File? name
    File? x_mfa
    File? consensus
    String seq_seq_pando_tpy
    String resolve
  }
  command <<<
    seq_seq_pan resolve \
      ~{seq_seq_pando_tpy} \
      ~{resolve} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(x_mfa) then ("--xmfa " +  '"' + x_mfa + '"') else ""} \
      ~{if defined(consensus) then ("--consensus " +  '"' + consensus + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Suppress warnings."
    order: "Ordering of blocks in XMFA/FASTA output (0,1,2,...)\\n[default: 0]"
    output_path: "path to output directory"
    name: "File prefix and sequence header for output FASTA /\\nXFMA file"
    x_mfa: "XMFA input file"
    consensus: "consensus FASTA file used in XMFA\\n"
    seq_seq_pando_tpy: ""
    resolve: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_name = "${in_name}"
  }
}