version 1.0

task Yaml2gff.1.4.pl {
  input {
    String filterFilterStatus
  }
  command <<<
    yaml2gff.1.4.pl \
      ~{if defined(filterFilterStatus) then ("--filterstatus " +  '"' + filterFilterStatus + '"') else ""}
  >>>
}