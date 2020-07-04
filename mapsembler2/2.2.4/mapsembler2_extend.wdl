version 1.0

task Mapsembler2Extend {
  input {
    File? where_write_default
    String? kind_of_prosses
    String? this_message_exit
  }
  command <<<
    mapsembler2_extend \
      ~{if defined(where_write_default) then ("-o " +  '"' + where_write_default + '"') else ""} \
      ~{if defined(kind_of_prosses) then ("-p " +  '"' + kind_of_prosses + '"') else ""} \
      ~{if defined(this_message_exit) then ("-h " +  '"' + this_message_exit + '"') else ""}
  >>>
  parameter_meta {
    where_write_default: ": where to write outputs. Default: \"res_mapsembler\" "
    kind_of_prosses: ": kind of prosses Breadth or Depth. Default: Breadth "
    this_message_exit: "this message and exit"
  }
}