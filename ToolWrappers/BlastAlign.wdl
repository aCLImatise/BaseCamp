version 1.0

task BlastAlign {
  input {
    Boolean? maximum_percentage_allowed
    Boolean? name_reference_sequence
    Boolean? names_excluded_optional
    Boolean? tf_retain_original
    Boolean? number_sequences_used
    File? i
  }
  command <<<
    BlastAlign \
      ~{if (maximum_percentage_allowed) then "-m" else ""} \
      ~{if (name_reference_sequence) then "-r" else ""} \
      ~{if (names_excluded_optional) then "-x" else ""} \
      ~{if (tf_retain_original) then "-n" else ""} \
      ~{if (number_sequences_used) then "-s" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    maximum_percentage_allowed: "<maximum percentage of gaps allowed in any one sequence in the final alignment> Optional but we find 0.5 the most useful; default = 95, i.e. only removing sequences with extremely short matches"
    name_reference_sequence: "<name of reference sequence> Optional; default is to search for best candidate (if entered, the sequence will be extracted, written to a separate file, and blasted against the original input file)"
    names_excluded_optional: "<names of comma-separated sequences to be excluded from this analysis> Optional"
    tf_retain_original: "<T/F> Retain original names in output files T(rue)/F(alse). Optional (default = T;) option F is to output the 15 character name abbreviations (stripped of potentially problematic characters) that is used in the program"
    number_sequences_used: "<Number of sequences to be used in initial search for reference sequence> Optional; default is to find the reference sequence by blasting all sequences against all sequences, only randomly subsampling when it thinks the blast output file might be too large (-s over-rides this)"
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}