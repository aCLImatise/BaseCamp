version 1.0

task Contig2contigOutcontigfile {
  input {
    Int contig_two_contig
    String seq_file
    String contig_file
    String out_contig_file
  }
  command <<<
    contig2contig outcontigfile \
      ~{contig_two_contig} \
      ~{seq_file} \
      ~{contig_file} \
      ~{out_contig_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contig_two_contig: ""
    seq_file: ""
    contig_file: ""
    out_contig_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}