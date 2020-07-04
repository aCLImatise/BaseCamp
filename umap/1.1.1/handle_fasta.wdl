version 1.0

task HandleFasta.py {
  input {
    Boolean? complement
    String? conversion
    String in_fast_a
    String out_fast_a
    String chr_size_path
    String chr_dir
  }
  command <<<
    handle_fasta.py \
      ~{in_fast_a} \
      ~{out_fast_a} \
      ~{chr_size_path} \
      ~{chr_dir} \
      ~{true="--Complement" false="" complement} \
      ~{if defined(conversion) then ("-Conversion " +  '"' + conversion + '"') else ""}
  >>>
  parameter_meta {
    complement: "Create a double genome with both + and - strand information"
    conversion: "Specify C2T or G2A"
    in_fast_a: "FASTA format genome"
    out_fast_a: "Output FASTA full path"
    chr_size_path: "Path to 2 column file with first column being the chromosome name and the second column being the chromosome size"
    chr_dir: "Path to directory for writing individual fasta files for each chromosome"
  }
}