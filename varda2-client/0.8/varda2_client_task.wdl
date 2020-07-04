version 1.0

task Varda2ClientTask {
  input {
    String? uuid
  }
  command <<<
    varda2-client task \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""}
  >>>
  parameter_meta {
    uuid: "Task UUID"
  }
}