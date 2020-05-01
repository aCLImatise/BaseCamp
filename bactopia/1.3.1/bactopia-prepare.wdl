version 1.0

task BactopiaPrepare.py {
  input {
    String eE
    String sS
    String patternPattern
    String? bacBacTopia
    String? preparePrepare
    String? strStr
  }
  command <<<
    bactopia-prepare.py \
      ~{bacBacTopia} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{preparePrepare} \
      ~{strStr}
  >>>
}