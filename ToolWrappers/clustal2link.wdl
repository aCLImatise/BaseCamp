version 1.0

task Clustal2link {
  input {
    String? aln
  }
  command <<<
    clustal2link \
      ~{if defined(aln) then ("-aln " +  '"' + aln + '"') else ""}
  >>>
  parameter_meta {
    aln: ""
  }
  output {
    File out_stdout = stdout()
  }
}