version 1.0

task PLEKModellingpy {
  input {
    String? is_rm_tempfile
    String? is_balanced
    Boolean? l_ncrna
    String plek_how_to_generate_scripts_dot_pdf
  }
  command <<<
    PLEKModelling_py \
      ~{plek_how_to_generate_scripts_dot_pdf} \
      ~{if defined(is_rm_tempfile) then ("-isrmtempfile " +  '"' + is_rm_tempfile + '"') else ""} \
      ~{if defined(is_balanced) then ("-isbalanced " +  '"' + is_balanced + '"') else ""} \
      ~{if (l_ncrna) then "-lncRNA" else ""}
  >>>
  parameter_meta {
    is_rm_tempfile: ""
    is_balanced: "mRNA transcripts used to build predictor, in fasta format."
    l_ncrna: "lncRNA transcripts used to build predictor, in fasta format."
    plek_how_to_generate_scripts_dot_pdf: "====================="
  }
  output {
    File out_stdout = stdout()
  }
}