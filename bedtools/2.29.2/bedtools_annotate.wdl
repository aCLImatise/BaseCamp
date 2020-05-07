version 1.0

task BedtoolsAnnotate {
  input {
    Boolean namesNames
    String countsCounts
    String defaultDefault
    Boolean bothBoth
    Boolean sS
    Boolean sS
  }
  command <<<
    bedtools annotate \
      ~{true="-names" false="" namesNames} \
      ~{if defined(countsCounts) then ("-counts " +  '"' + countsCounts + '"') else ""} \
      ~{if defined(defaultDefault) then ("- Default " +  '"' + defaultDefault + '"') else ""} \
      ~{true="-both" false="" bothBoth} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS}
  >>>
}