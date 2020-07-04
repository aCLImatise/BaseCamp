version 1.0

task ProphyleSplitAllseq.py {
  input {
    String? fasta_file
    String output_dir
  }
  command <<<
    prophyle_split_allseq.py \
      ~{output_dir} \
      ~{if defined(fasta_file) then ("-i " +  '"' + fasta_file + '"') else ""}
  >>>
  parameter_meta {
    fasta_file: "Fasta file [stdin]"
    output_dir: "Path to the output directory"
  }
}