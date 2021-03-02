version 1.0

task Dnpbinstrings {
  input {
    Boolean? version_check
    String? dinucleotide
    String appearance_dot
  }
  command <<<
    dnp_binstrings \
      ~{appearance_dot} \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(dinucleotide) then ("--dinucleotide " +  '"' + dinucleotide + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    dinucleotide: "Dinucleotide that is to identify in fasta sequences One of AA, AC,\\nAG, AT, CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT. Default:\\nCC."
    appearance_dot: "REQUIRED ARGUMENTS"
  }
  output {
    File out_stdout = stdout()
  }
}