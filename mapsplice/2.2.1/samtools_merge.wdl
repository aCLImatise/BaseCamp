version 1.0

task SamtoolsMerge {
  input {
    Boolean nN
    Boolean rR
    Boolean uU
    String rR
    File hH
  }
  command <<<
    samtools merge \
      ~{true="-n" false="" nN} \
      ~{true="-r" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}