version 1.0

task Mbtable2fasta {
  input {
    String? flank_bp
    String genome_fast_a
  }
  command <<<
    mb_table2fasta \
      ~{genome_fast_a} \
      ~{if defined(flank_bp) then ("--flank_bp " +  '"' + flank_bp + '"') else ""}
  >>>
  parameter_meta {
    flank_bp: ""
    genome_fast_a: "output_fasta"
  }
  output {
    File out_stdout = stdout()
  }
}