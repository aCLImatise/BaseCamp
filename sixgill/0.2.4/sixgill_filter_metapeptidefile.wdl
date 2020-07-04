version 1.0

task SixgillFilterMetapeptidefile {
  input {
    String? out
    Int? minor_f_length
    String six_gill_filter
  }
  command <<<
    sixgill_filter metapeptidefile \
      ~{six_gill_filter} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(minor_f_length) then ("--minorflength " +  '"' + minor_f_length + '"') else ""}
  >>>
  parameter_meta {
    out: ""
    minor_f_length: ""
    six_gill_filter: ""
  }
}