version 1.0

task Amosvalidate {
  input {
    String dD
  }
  command <<<
    amosvalidate \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""}
  >>>
}