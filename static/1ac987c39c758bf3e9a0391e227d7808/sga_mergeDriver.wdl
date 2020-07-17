version 1.0

task SgaMergeDriver.pl {
  input {
    String? threads
    String? bin
    File files
  }
  command <<<
    sga-mergeDriver.pl \
      ~{files} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(bin) then ("--bin " +  '"' + bin + '"') else ""}
  >>>
  parameter_meta {
    threads: "use N threads for the merge processes"
    bin: "use PROG as the sga executable [default: sga]"
    files: ""
  }
}