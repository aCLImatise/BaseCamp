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
    String? assemblies
  }
  command <<<
    makeTableList \
      ~{assemblies} \
      ~{true="-host" false="" host} \
      ~{true="-user" false="" user} \
      ~{true="-password" false="" password} \
      ~{true="-toProf" false="" to_prof} \
      ~{true="-toHost" false="" to_host} \
      ~{true="-toUser" false="" to_user} \
      ~{true="-toPassword" false="" to_password} \
      ~{true="-hgcentral" false="" hg_central} \
      ~{true="-all" false="" all} \
      ~{true="-bigFiles" false="" big_files}
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
    assemblies: ""
  }
}