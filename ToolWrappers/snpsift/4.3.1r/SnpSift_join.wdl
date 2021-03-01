version 1.0

task SnpSiftJoin {
  input {
    Int? if_one
    Int? if_two
    Int? cols_one
    Int? cols_two
    Boolean? all
    Boolean? closest
    Boolean? empty
    String? jar
    String java
    String join
    Int file_one
    Int file_two
  }
  command <<<
    SnpSift join \
      ~{java} \
      ~{join} \
      ~{file_one} \
      ~{file_two} \
      ~{if defined(if_one) then ("-if1 " +  '"' + if_one + '"') else ""} \
      ~{if defined(if_two) then ("-if2 " +  '"' + if_two + '"') else ""} \
      ~{if defined(cols_one) then ("-cols1 " +  '"' + cols_one + '"') else ""} \
      ~{if defined(cols_two) then ("-cols2 " +  '"' + cols_two + '"') else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (closest) then "-closest" else ""} \
      ~{if (empty) then "-empty" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    if_one: ": Offset for file1 (e.g. 1 if coordinates are one-based. Default: 1"
    if_two: ": Offset for file2 (e.g. 2 if coordinates are one-based. Default: 1"
    cols_one: ": Column definition for file 1. Format: chrCol,startCol,endCol (e.g. '1,2,3'). Shortcuts 'bed' or 'vcf' are allowed. Default: 'vcf'"
    cols_two: ": Column definition for file 2. Format: chrCol,startCol,endCol (e.g. '1,2,3'). Shortcuts 'bed' or 'vcf' are allowed. Default: 'vcf'"
    all: ": For each interval, show all intersecting. Default: show only one (largest intersection)"
    closest: ": Show closest intervals in file2 if none intersect. Default: off"
    empty: ": Show intervals in file1 even if they do not intersect with any other interval. Default: off"
    jar: ""
    java: ""
    join: ""
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}