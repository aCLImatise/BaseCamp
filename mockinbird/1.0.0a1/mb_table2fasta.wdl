version 1.0

task MbTable2fasta {
  input {
    String? flank_bp
  }
  command <<<
    mb-table2fasta \
      ~{if defined(flank_bp) then ("--flank_bp " +  '"' + flank_bp + '"') else ""}
  >>>
  parameter_meta {
    flank_bp: ""
  }
}