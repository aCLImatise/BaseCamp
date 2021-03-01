version 1.0

task FastqRename {
  input {
    String? prefix
    Boolean? renum
    Boolean? clean
    String? tr
    String? trc
    String? suffix
  }
  command <<<
    fastq_rename \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (renum) then "-renum" else ""} \
      ~{if (clean) then "-clean" else ""} \
      ~{if defined(tr) then ("-tr " +  '"' + tr + '"') else ""} \
      ~{if defined(trc) then ("-trc " +  '"' + trc + '"') else ""} \
      ~{if defined(suffix) then ("-suffix " +  '"' + suffix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: ": add prefix to each readname"
    renum: ": replace the readname as a sequential number 1,2,...,E,F,10,11..."
    clean: ": clean the sequence name by removing sequence after first space"
    tr: ": replace these characters in the readname"
    trc: ": when replacing, replace with this (default: _)"
    suffix: ": add suffix to each readname"
  }
  output {
    File out_stdout = stdout()
  }
}