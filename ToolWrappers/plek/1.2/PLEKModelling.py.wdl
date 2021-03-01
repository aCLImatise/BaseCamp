version 1.0

task PLEKModellingpy {
  input {
    String? is_rm_tempfile
    Boolean? l_ncrna
  }
  command <<<
    PLEKModelling_py \
      ~{if defined(is_rm_tempfile) then ("-isrmtempfile " +  '"' + is_rm_tempfile + '"') else ""} \
      ~{if (l_ncrna) then "-lncRNA" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    is_rm_tempfile: "mRNA transcripts used to build predictor, in fasta format."
    l_ncrna: "lncRNA transcripts used to build predictor, in fasta format."
  }
  output {
    File out_stdout = stdout()
  }
}