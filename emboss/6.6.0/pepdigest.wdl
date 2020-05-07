version 1.0

task Pepdigest {
  input {
    Boolean menuMenu
    Boolean monoMono
  }
  command <<<
    pepdigest \
      ~{true="-menu" false="" menuMenu} \
      ~{true="-mono" false="" monoMono}
  >>>
}