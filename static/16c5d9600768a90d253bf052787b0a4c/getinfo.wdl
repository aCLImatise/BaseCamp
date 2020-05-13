version 1.0

task Getinfo.py {
  input {
    File outfileOutfile
    String fF
    String tT
    String tT
    String? gbGbFiles
  }
  command <<<
    getinfo.py \
      ~{gbGbFiles} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""}
  >>>
}