version 1.0

task MakeHexamerTab.py {
  input {
    String codCod
    String nonNonCod
  }
  command <<<
    make_hexamer_tab.py \
      ~{if defined(codCod) then ("--cod " +  '"' + codCod + '"') else ""} \
      ~{if defined(nonNonCod) then ("--noncod " +  '"' + nonNonCod + '"') else ""}
  >>>
}