version 1.0

task Mwfilter {
  input {
    Boolean? tolerance
    Boolean? show_del
    Boolean? data_file
  }
  command <<<
    _mwfilter \
      ~{if (tolerance) then "-tolerance" else ""} \
      ~{if (show_del) then "-showdel" else ""} \
      ~{if (data_file) then "-datafile" else ""}
  >>>
  parameter_meta {
    tolerance: "float      [50.0] Ppm tolerance (Any numeric value)"
    show_del: "boolean    [N] Output deleted mwts"
    data_file: "datafile   [Emwfilter.dat] Molecular weight standards\\ndata file"
  }
  output {
    File out_stdout = stdout()
  }
}