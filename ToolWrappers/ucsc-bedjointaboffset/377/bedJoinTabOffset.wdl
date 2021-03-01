version 1.0

task BedJoinTabOffset {
  input {
    Boolean? debug
    File? tab_key_field
    File? bed_key_field
    String in_tab_file
    String in_bed_file
    String out_bed_file
  }
  command <<<
    bedJoinTabOffset \
      ~{in_tab_file} \
      ~{in_bed_file} \
      ~{out_bed_file} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(tab_key_field) then ("--tabKeyField " +  '"' + tab_key_field + '"') else ""} \
      ~{if defined(bed_key_field) then ("--bedKeyField " +  '"' + bed_key_field + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "show debug messages"
    tab_key_field: "the index of the key field in the tab file that\\nmatches the key field in the bed file. default 0"
    bed_key_field: "the index of the key field in the bed file that\\nmatches the key field in the tab file. default 3\\n"
    in_tab_file: ""
    in_bed_file: ""
    out_bed_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}