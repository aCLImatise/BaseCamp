version 1.0

task BedtoolsReldist {
  input {
    String? detail
    String? a
    String? b
  }
  command <<<
    bedtools reldist \
      ~{if defined(detail) then ("-detail " +  '"' + detail + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    detail: "the relativedistance for each interval in A"
    a: ""
    b: ""
  }
}