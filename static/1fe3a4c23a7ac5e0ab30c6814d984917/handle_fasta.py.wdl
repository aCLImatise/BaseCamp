version 1.0

task HandleFastapy {
  input {
    Boolean? complement
    String? conversion
    String in_fast_a
    String out_fast_a
    String chr_size_path
    String chr_dir
    String information
  }
  command <<<
    handle_fasta_py \
      ~{in_fast_a} \
      ~{out_fast_a} \
      ~{chr_size_path} \
      ~{chr_dir} \
      ~{information} \
      ~{if (complement) then "--Complement" else ""} \
      ~{if defined(conversion) then ("-Conversion " +  '"' + conversion + '"') else ""}
  >>>
  parameter_meta {
    complement: "Create a double genome with both + and - strand"
    conversion: ""
    in_fast_a: "FASTA format genome"
    out_fast_a: "Output FASTA full path"
    chr_size_path: "Path to 2 column file with first column being the\\nchromosome name and the second column being the\\nchromosome size"
    chr_dir: "Path to directory for writing individual fasta files\\nfor each chromosome"
    information: "-Conversion CONVERSION"
  }
  output {
    File out_stdout = stdout()
  }
}