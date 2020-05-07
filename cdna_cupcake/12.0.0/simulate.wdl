version 1.0

task Simulate.py {
  input {
    String copyCopy
    String insIns
    String deleDele
    String subSub
  }
  command <<<
    simulate.py \
      ~{if defined(copyCopy) then ("--copy " +  '"' + copyCopy + '"') else ""} \
      ~{if defined(insIns) then ("--ins " +  '"' + insIns + '"') else ""} \
      ~{if defined(deleDele) then ("--dele " +  '"' + deleDele + '"') else ""} \
      ~{if defined(subSub) then ("--sub " +  '"' + subSub + '"') else ""}
  >>>
}