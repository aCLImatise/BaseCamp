version 1.0

task Dedupe.sh {
  input {
    String xmx20gXmx20g
  }
  command <<<
    dedupe.sh \
      ~{if defined(xmx20gXmx20g) then ("-Xmx20g " +  '"' + xmx20gXmx20g + '"') else ""}
  >>>
}