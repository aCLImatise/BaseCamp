version 1.0

task CravatadminPublish {
  input {
    Boolean? data
    Boolean? code
    String? user
    String? password
    Boolean? force_yes
    Boolean? overwrite
  }
  command <<<
    cravat_admin publish \
      ~{if (data) then "--data" else ""} \
      ~{if (code) then "--code" else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if (force_yes) then "--force-yes" else ""} \
      ~{if (overwrite) then "--overwrite" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    data: "publishes module with data."
    code: "publishes module without data."
    user: "user to publish as. Typically your email."
    password: "password for the user. Enter at prompt if missing."
    force_yes: "overrides yes to overwrite question"
    overwrite: "overwrites a published module/version"
  }
  output {
    File out_stdout = stdout()
  }
}