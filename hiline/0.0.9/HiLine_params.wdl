version 1.0

task HiLineParams {
  input {
    Int? threads
    Int? min_mapq
  }
  command <<<
    HiLine params \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(min_mapq) then ("--minmapq " +  '"' + min_mapq + '"') else ""}
  >>>
  parameter_meta {
    threads: "RANGE  Number of threads to use, must be at least 3.\\nDefault=4"
    min_mapq: "RANGE  Minimum mapping quality. Default=10"
  }
  output {
    File out_stdout = stdout()
  }
}