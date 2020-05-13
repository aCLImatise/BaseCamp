version 1.0

task MakeTableList {
  input {
    Boolean hostHost
    Boolean userUser
    Boolean passwordPassword
    Boolean toToProf
    Boolean toToHost
    Boolean toToUser
    Boolean toToPassword
    Boolean hgHgCentral
    Boolean allAll
    Boolean bigBigFiles
    String? assembliesAssemblies
  }
  command <<<
    makeTableList \
      ~{assembliesAssemblies} \
      ~{true="-host" false="" hostHost} \
      ~{true="-user" false="" userUser} \
      ~{true="-password" false="" passwordPassword} \
      ~{true="-toProf" false="" toToProf} \
      ~{true="-toHost" false="" toToHost} \
      ~{true="-toUser" false="" toToUser} \
      ~{true="-toPassword" false="" toToPassword} \
      ~{true="-hgcentral" false="" hgHgCentral} \
      ~{true="-all" false="" allAll} \
      ~{true="-bigFiles" false="" bigBigFiles}
  >>>
}