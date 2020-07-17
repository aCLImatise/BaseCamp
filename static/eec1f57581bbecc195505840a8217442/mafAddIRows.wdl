version 1.0

task MafAddIRows {
  input {
    String? n_beds
    Boolean? add_n
    Boolean? add_dash
    String maf_in
    String two_bit_file
    String maf_out
  }
  command <<<
    mafAddIRows \
      ~{maf_in} \
      ~{two_bit_file} \
      ~{maf_out} \
      ~{if defined(n_beds) then ("-nBeds " +  '"' + n_beds + '"') else ""} \
      ~{true="-addN" false="" add_n} \
      ~{true="-addDash" false="" add_dash}
  >>>
  parameter_meta {
    n_beds: "reads in list of bed files, one per species, with N locations"
    add_n: "adds rows of N's into maf blocks (rather than just annotating them)"
    add_dash: "adds rows of -'s into maf blocks (rather than just annotating them)"
    maf_in: ""
    two_bit_file: ""
    maf_out: ""
  }
}