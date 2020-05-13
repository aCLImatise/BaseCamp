version 1.0

task Go2oboText {
  input {
    String? objObjYaml
    String? objObjStorable
    String? textTextHtml
    String? godGodBPreStore
    String? chChAdodbPreStore
  }
  command <<<
    go2obo_text \
      ~{objObjYaml} \
      ~{objObjStorable} \
      ~{textTextHtml} \
      ~{godGodBPreStore} \
      ~{chChAdodbPreStore}
  >>>
}