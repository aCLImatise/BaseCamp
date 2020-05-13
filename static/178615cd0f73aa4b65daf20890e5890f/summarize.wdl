version 1.0

task Summarize {
  input {
    String gG
    Boolean wW
    String? alignmentAlignment
  }
  command <<<
    summarize \
      ~{alignmentAlignment} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-w" false="" wW}
  >>>
}