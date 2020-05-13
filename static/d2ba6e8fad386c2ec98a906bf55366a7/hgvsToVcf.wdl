version 1.0

task HgvsToVcf {
  input {
    Boolean noNoLeftShift
    String? dbDb
    String? inputInputHgvs
    String? outputOutputVcf
  }
  command <<<
    hgvsToVcf \
      ~{dbDb} \
      ~{true="-noLeftShift" false="" noNoLeftShift} \
      ~{inputInputHgvs} \
      ~{outputOutputVcf}
  >>>
}