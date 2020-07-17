version 1.0

task BedJoinTabOffset {
  input {
    Boolean? debug
    String? tab_key_field
    String? bed_key_field
    Int in_tab_file
    String in_bed_file
    String out_bed_file
  }
  command <<<
    bedJoinTabOffset \
      ~{in_tab_file} \
      ~{in_bed_file} \
      ~{out_bed_file} \
      ~{true="--debug" false="" debug} \
      ~{if defined(tab_key_field) then ("--tabKeyField " +  '"' + tab_key_field + '"') else ""} \
      ~{if defined(bed_key_field) then ("--bedKeyField " +  '"' + bed_key_field + '"') else ""}
  >>>
  parameter_meta {
    debug: "show debug messages"
    tab_key_field: "the index of the key field in the tab file that matches the key field in the bed file. default 0"
    bed_key_field: "the index of the key field in the bed file that matches the key field in the tab file. default 3"
    in_tab_file: ""
    in_bed_file: ""
    out_bed_file: ""
  }
}