version 1.0

task GdalContour {
  input {
    String? b
    String? a
    Boolean? three_d
    Boolean? in_o_data
  }
  command <<<
    gdal_contour \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{true="-3d" false="" three_d} \
      ~{true="-inodata" false="" in_o_data}
  >>>
  parameter_meta {
    b: ""
    a: ""
    three_d: ""
    in_o_data: ""
  }
}