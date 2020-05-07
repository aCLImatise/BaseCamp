version 1.0

task Gitable.sh {
  input {
    String xmx20gXmx20g
  }
  command <<<
    gitable.sh \
      ~{if defined(xmx20gXmx20g) then ("-Xmx20g " +  '"' + xmx20gXmx20g + '"') else ""}
  >>>
}