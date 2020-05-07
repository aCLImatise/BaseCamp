version 1.0

task Go2summary {
  input {
    String? objObjYaml
    String? objObjStorable
    String? textTextHtml
    String? godGodBPreStore
    String? chChAdodbPreStore
  }
  command <<<
    go2summary \
      ~{objObjYaml} \
      ~{objObjStorable} \
      ~{textTextHtml} \
      ~{godGodBPreStore} \
      ~{chChAdodbPreStore}
  >>>
}