version 1.0

task MobInit {
  input {
    String dD
    Boolean vV
    Boolean vV
  }
  command <<<
    mob_init \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}