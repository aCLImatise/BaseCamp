version 1.0

task NebulizerDeleteUser {
  input {
    Boolean? purge
    Boolean? yes
    String galaxy
    String email
  }
  command <<<
    nebulizer delete_user \
      ~{galaxy} \
      ~{email} \
      ~{if (purge) then "--purge" else ""} \
      ~{if (yes) then "--yes" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    purge: "also purge (permanently delete) the user."
    yes: "don't ask for confirmation of deletions."
    galaxy: ""
    email: ""
  }
  output {
    File out_stdout = stdout()
  }
}