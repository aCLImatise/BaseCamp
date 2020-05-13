version 1.0

task Go2pathlist {
  input {
    String? objObjYaml
    String? objObjStorable
    String? textTextHtml
    String? godGodBPreStore
    String? chChAdodbPreStore
  }
  command <<<
    go2pathlist \
      ~{objObjYaml} \
      ~{objObjStorable} \
      ~{textTextHtml} \
      ~{godGodBPreStore} \
      ~{chChAdodbPreStore}
  >>>
}