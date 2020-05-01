version 1.0

task AnnotateBed {
  input {
    Boolean namesNames
    String countsCounts
    String defaultDefault
    Boolean bothBoth
    Boolean sS
    Boolean sS
  }
  command <<<
    annotateBed \
      ~{true="-names" false="" namesNames} \
      ~{if defined(countsCounts) then ("-counts " +  '"' + countsCounts + '"') else ""} \
      ~{if defined(defaultDefault) then ("- Default " +  '"' + defaultDefault + '"') else ""} \
      ~{true="-both" false="" bothBoth} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS}
  >>>
}