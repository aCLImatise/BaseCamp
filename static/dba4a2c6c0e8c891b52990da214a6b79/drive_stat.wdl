version 1.0

task DriveStat {
  input {
    Int? depth
    Boolean? id
    Boolean? md_five_sum
    Boolean? quiet
    Boolean? recursive
  }
  command <<<
    drive stat \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (md_five_sum) then "-md5sum" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    depth: "max traversal depth (default 1)"
    id: "stat by id instead of path"
    md_five_sum: "produce output compatible with md5sum(1)"
    quiet: "if set, do not log anything but errors"
    recursive: "recursively discover folders\\n"
  }
  output {
    File out_stdout = stdout()
  }
}