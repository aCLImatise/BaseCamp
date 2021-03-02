version 1.0

task RtgSdfstats {
  input {
    Boolean? lengths
    String? position
    Boolean? quality
    Int? sex
    String? taxonomy
    String? unknowns
  }
  command <<<
    rtg sdfstats \
      ~{if (lengths) then "--lengths" else ""} \
      ~{if defined(position) then ("--position " +  '"' + position + '"') else ""} \
      ~{if (quality) then "--quality" else ""} \
      ~{if defined(sex) then ("--sex " +  '"' + sex + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(unknowns) then ("--unknowns " +  '"' + unknowns + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    lengths: "print out the name and length of each sequence. (Not\\nrecommended for read sets)"
    position: "display info about unknown bases (Ns) by read position"
    quality: "display mean of quality"
    sex: "display reference sequence list for the given sex, if defined.\\nAllowed values are [male, female, either]. May be specified 0\\nor more times, or as a comma separated list"
    taxonomy: "information about taxonomy"
    unknowns: "info about unknown bases (Ns)"
  }
  output {
    File out_stdout = stdout()
  }
}