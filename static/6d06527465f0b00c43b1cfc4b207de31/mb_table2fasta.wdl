version 1.0

task Mbtable2fasta {
  input {
    String? flank_bp
    String table_file
    String output_fast_a
  }
  command <<<
    mb_table2fasta \
      ~{table_file} \
      ~{output_fast_a} \
      ~{if defined(flank_bp) then ("--flank_bp " +  '"' + flank_bp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    flank_bp: ""
    table_file: "genome_fasta"
    output_fast_a: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}