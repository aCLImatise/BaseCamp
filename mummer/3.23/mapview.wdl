version 1.0

task Mapview {
  input {
    String? x_one
    String? x_two
    Boolean? ref_input_file
    Boolean? display_name_query
    Boolean? ir
    String coords_file
    String? utr
    String? var_7
    String? cds
    String? var_9
  }
  command <<<
    mapview \
      ~{coords_file} \
      ~{utr} \
      ~{var_7} \
      ~{cds} \
      ~{var_9} \
      ~{if defined(x_one) then ("-x1 " +  '"' + x_one + '"') else ""} \
      ~{if defined(x_two) then ("-x2 " +  '"' + x_two + '"') else ""} \
      ~{true="-g" false="" ref_input_file} \
      ~{true="-I" false="" display_name_query} \
      ~{true="-Ir" false="" ir}
  >>>
  parameter_meta {
    x_one: "Set the lower coordinate bound of the display"
    x_two: "Set the upper coordinate bound of the display"
    ref_input_file: "|ref          If the input file is provided by 'mgaps', set the reference sequence ID (as it appears in the first column of the UTR/CDS coords file)"
    display_name_query: "Display the name of query sequences"
    ir: "Display the name of reference genes"
    coords_file: ""
    utr: ""
    var_7: ""
    cds: ""
    var_9: ""
  }
}