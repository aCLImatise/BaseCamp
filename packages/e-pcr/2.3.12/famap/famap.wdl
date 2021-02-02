version 1.0

task Famap {
  input {
    String? t
    File? b
    Boolean? hv
    String nucleotide_ambiquity_codes_allowed
    String nucleotide_ambiquity_codes_uppercase
  }
  command <<<
    famap \
      ~{nucleotide_ambiquity_codes_allowed} \
      ~{nucleotide_ambiquity_codes_uppercase} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if (hv) then "-hV" else ""}
  >>>
  parameter_meta {
    t: ""
    b: ""
    hv: ""
    nucleotide_ambiquity_codes_allowed: "- nucleotide with ambiquity codes allowed"
    nucleotide_ambiquity_codes_uppercase: "- nucleotide with ambiquity codes uppercase"
  }
  output {
    File out_stdout = stdout()
  }
}