version 1.0

task GkpStoreCreate {
  input {
    String? create_this_gkpstore
  }
  command <<<
    gkpStoreCreate \
      ~{if defined(create_this_gkpstore) then ("-o " +  '"' + create_this_gkpstore + '"') else ""}
  >>>
  parameter_meta {
    create_this_gkpstore: "create this gkpStore"
  }
  output {
    File out_stdout = stdout()
  }
}