version 1.0

task MakeTableList {
  input {
    Boolean? host
    Boolean? user
    Boolean? password
    Boolean? to_prof
    Boolean? to_host
    Boolean? to_user
    Boolean? to_password
    Boolean? hg_central
    Boolean? all
    Boolean? big_files
  }
  command <<<
    makeTableList \
      ~{if (host) then "-host" else ""} \
      ~{if (user) then "-user" else ""} \
      ~{if (password) then "-password" else ""} \
      ~{if (to_prof) then "-toProf" else ""} \
      ~{if (to_host) then "-toHost" else ""} \
      ~{if (to_user) then "-toUser" else ""} \
      ~{if (to_password) then "-toPassword" else ""} \
      ~{if (hg_central) then "-hgcentral" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (big_files) then "-bigFiles" else ""}
  >>>
  parameter_meta {
    host: "show tables: mysql host"
    user: "show tables: mysql user"
    password: "show tables: mysql password"
    to_prof: "optional: mysql profile to write table list to (target server)"
    to_host: "alternative to toProf: mysql target host"
    to_user: "alternative to toProf: mysql target user"
    to_password: "alternative to toProf: mysql target pwd"
    hg_central: "specify an alternative hgcentral db name when using -all"
    all: "recreate tableList for all active assemblies in hg.conf's hgcentral"
    big_files: "create table with tuples (track, name of bigfile)"
  }
  output {
    File out_stdout = stdout()
  }
}