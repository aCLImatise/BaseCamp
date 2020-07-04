version 1.0

task BedtoolsComplement {
  input {
    Boolean? limit_output_solely
    String? i
    String? g
  }
  command <<<
    bedtools complement \
      ~{true="-L" false="" limit_output_solely} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    limit_output_solely: "Limit output to solely the chromosomes with records in the input file."
    i: ""
    g: ""
  }
}