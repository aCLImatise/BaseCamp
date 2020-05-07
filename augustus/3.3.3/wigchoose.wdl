version 1.0

task Wigchoose.pl {
  input {
    String minMinCov
    String minMinReLcov
    String maxMaxGap
  }
  command <<<
    wigchoose.pl \
      ~{if defined(minMinCov) then ("--mincov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinReLcov) then ("--minrelcov " +  '"' + minMinReLcov + '"') else ""} \
      ~{if defined(maxMaxGap) then ("--maxgap " +  '"' + maxMaxGap + '"') else ""}
  >>>
}