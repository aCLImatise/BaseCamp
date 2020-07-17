version 1.0

task Renamedat.pl {
  input {
    String basename
    String not
    String found
  }
  command <<<
    renamedat.pl \
      ~{basename} \
      ~{not} \
      ~{found}
  >>>
  parameter_meta {
    basename: ""
    not: ""
    found: ""
  }
}