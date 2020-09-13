version 1.0

task BedtoolsReldist {
  input {
    String? detail
    String? b
    String? a
  }
  command <<<
    bedtools reldist \
      ~{if defined(detail) then ("-detail " +  '"' + detail + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  parameter_meta {
    detail: "the relativedistance for each interval in A"
    b: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}