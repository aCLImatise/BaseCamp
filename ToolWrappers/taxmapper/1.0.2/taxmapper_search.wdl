version 1.0

task TaxmapperSearch {
  input {
    File? forward
    File? reverse
    File? rap_search
    File? database
    String? out
    Int? threads
  }
  command <<<
    taxmapper search \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(rap_search) then ("--rapsearch " +  '"' + rap_search + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    forward: "Forward reads in fasta or fastq format"
    reverse: "Reads in fasta or fastq format [optional]"
    rap_search: "Rapsearch path, version >=2.24 [default: rapsearch set\\nin PATH variable]"
    database: "Path to RAPSearch database index"
    out: "Basename for output files [default: <input>_hits]"
    threads: "Number of threads [default: 4]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}