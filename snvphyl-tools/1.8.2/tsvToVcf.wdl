version 1.0

task TsvToVcf.pl {
  input {
    String vV
    String dD
  }
  command <<<
    tsvToVcf.pl \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}