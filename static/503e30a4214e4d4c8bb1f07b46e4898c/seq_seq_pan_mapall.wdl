version 1.0

task SeqseqpanMapall {
  input {
    Boolean? quiet
    File? output_path
    File? name
    File? consensus
    File? index
    Int? threads
    String seq_seq_pando_tpy
    String map_all
  }
  command <<<
    seq_seq_pan mapall \
      ~{seq_seq_pando_tpy} \
      ~{map_all} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(consensus) then ("--consensus " +  '"' + consensus + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seq-seq-pan:1.1.0--py_1"
  }
  parameter_meta {
    quiet: "Suppress warnings."
    output_path: "path to output directory"
    name: "File prefix and sequence header for output FASTA /\\nXFMA file"
    consensus: "consensus FASTA file used in XMFA"
    index: "File with sequences to map. First line:\\nc<TAB>dest_seq[,dest_seq2,...] or\\nsource_seq[,source_seq2]<TAB>c. All following lines\\nwill be ignored."
    threads: "Number of threads to use for mapping all positions.\\nUsing all available threads if not specified.\\n"
    seq_seq_pando_tpy: ""
    map_all: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_name = "${in_name}"
  }
}