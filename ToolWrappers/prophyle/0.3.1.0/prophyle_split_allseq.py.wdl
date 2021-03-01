version 1.0

task ProphyleSplitAllseqpy {
  input {
    File? fasta_file
    String output_dir
  }
  command <<<
    prophyle_split_allseq_py \
      ~{output_dir} \
      ~{if defined(fasta_file) then ("-i " +  '"' + fasta_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fasta_file: "Fasta file [stdin]"
    output_dir: "Path to the output directory"
  }
  output {
    File out_stdout = stdout()
  }
}