version 1.0

task EagleMeta {
  input {
    String? write_value_meta
    Boolean? delete
    Boolean? store_list
    String the_eagledatafile
    String name
  }
  command <<<
    eagle meta \
      ~{the_eagledatafile} \
      ~{name} \
      ~{if defined(write_value_meta) then ("-s " +  '"' + write_value_meta + '"') else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (store_list) then "--storelist" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_value_meta: "write this value as meta information"
    delete: "delete the meta information"
    store_list: "[STORELIST]\\na list containing key value pairs to store\\n"
    the_eagledatafile: "the eagle-data-file"
    name: "the name of the meta information"
  }
  output {
    File out_stdout = stdout()
  }
}