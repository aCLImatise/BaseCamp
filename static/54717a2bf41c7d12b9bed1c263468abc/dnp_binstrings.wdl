version 1.0

task DnpBinstrings {
  input {
    Boolean? version_check
    String? dinucleotide
  }
  command <<<
    dnp-binstrings \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(dinucleotide) then ("--dinucleotide " +  '"' + dinucleotide + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    dinucleotide: "Dinucleotide that is to identify in fasta sequences One of AA, AC, AG, AT, CA, CC, CG, CT, GA, GC, GG, GT, TA, TC, TG, and TT. Default: CC."
  }
}