version 1.0

task SeqseqpanMap {
  input {
    Boolean? quiet
    File? output_path
    File? name
    File? consensus
    Int? index
    String seq_seq_pando_tpy
    String var_map
  }
  command <<<
    seq_seq_pan map \
      ~{seq_seq_pando_tpy} \
      ~{var_map} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(consensus) then ("--consensus " +  '"' + consensus + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Suppress warnings."
    output_path: "path to output directory"
    name: "File prefix and sequence header for output FASTA /\\nXFMA file"
    consensus: "consensus FASTA file used in XMFA"
    index: "File with indices to map. First line:\\nsource_seq<TAB>dest_seq[,dest_seq2,...] using \\\"c\\\" or\\nsequence number. Then one coordinate per line.\\nCoordinates are 1-based!\\n"
    seq_seq_pando_tpy: ""
    var_map: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_name = "${in_name}"
  }
}