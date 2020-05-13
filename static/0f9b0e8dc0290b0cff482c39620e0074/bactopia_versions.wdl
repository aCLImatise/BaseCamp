version 1.0

task BactopiaVersions.py {
  input {
    String bacBacTopia
    String? bacBacTopia
    String? versionsVersions
  }
  command <<<
    bactopia-versions.py \
      ~{bacBacTopia} \
      ~{if defined(bacBacTopia) then ("--bactopia " +  '"' + bacBacTopia + '"') else ""} \
      ~{versionsVersions}
  >>>
}