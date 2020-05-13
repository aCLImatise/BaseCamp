version 1.0

task UniqLine.pl {
  input {
    String cC
  }
  command <<<
    uniqLine.pl \
      ~{if defined(cC) then ("--c " +  '"' + cC + '"') else ""}
  >>>
}