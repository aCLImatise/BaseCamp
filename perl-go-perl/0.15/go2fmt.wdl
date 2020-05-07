version 1.0

task Go2fmt.pl {
  input {
    String? objObjYaml
    String? objObjStorable
    String? textTextHtml
    String? godGodBPreStore
    String? chChAdodbPreStore
  }
  command <<<
    go2fmt.pl \
      ~{objObjYaml} \
      ~{objObjStorable} \
      ~{textTextHtml} \
      ~{godGodBPreStore} \
      ~{chChAdodbPreStore}
  >>>
}