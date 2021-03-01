version 1.0

task ReadsStatspy {
  input {
    File? fast_x
    Boolean? raw
    String? savepath
    Boolean? report
    String? tag
  }
  command <<<
    reads_stats_py \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if defined(savepath) then ("--savepath " +  '"' + savepath + '"') else ""} \
      ~{if (report) then "--report" else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_x: "input file fastq or fasta"
    raw: "save raw the gc content per read/contig.\\ndefault[False]"
    savepath: "output dir. default[cwd]"
    report: "Report PDF default[False]"
    tag: "output name or tag. default[input name]"
  }
  output {
    File out_stdout = stdout()
  }
}