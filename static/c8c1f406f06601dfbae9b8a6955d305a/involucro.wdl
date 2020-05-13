version 1.0

task Involucro {
  input {
    String hH
    Boolean tT
    String eE
    String fF
    String hostHost
    String sS
    String setSet
    Boolean tasksTasks
    Int vV
    Boolean versionVersion
    String wW
    String wrapWrap
  }
  command <<<
    involucro \
      ~{if defined(hH) then ("-H " +  '"' + hH + '"') else ""} \
      ~{true="-T" false="" tT} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(hostHost) then ("-host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(setSet) then ("-set " +  '"' + setSet + '"') else ""} \
      ~{true="-tasks" false="" tasksTasks} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{true="-version" false="" versionVersion} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(wrapWrap) then ("-wrap " +  '"' + wrapWrap + '"') else ""}
  >>>
}