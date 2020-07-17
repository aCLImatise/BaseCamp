version 1.0

task ReadsStats.py {
  input {
    File? fast_x
    Boolean? raw
    String? savepath
    Boolean? report
    String? tag
  }
  command <<<
    reads_stats.py \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{true="--raw" false="" raw} \
      ~{if defined(savepath) then ("--savepath " +  '"' + savepath + '"') else ""} \
      ~{true="--report" false="" report} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""}
  >>>
  parameter_meta {
    fast_x: "input file fastq or fasta"
    raw: "save raw the gc content per read/contig. default[False]"
    savepath: "output dir. default[cwd]"
    report: "Report PDF default[False]"
    tag: "output name or tag. default[input name]"
  }
}