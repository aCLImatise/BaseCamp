version 1.0

task Wigchoosepl {
  input {
    Int? min_cov
    Int? min_re_lcov
    Int? max_gap
    String cat
    String in_do_twig
  }
  command <<<
    wigchoose_pl \
      ~{cat} \
      ~{in_do_twig} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_re_lcov) then ("--minrelcov " +  '"' + min_re_lcov + '"') else ""} \
      ~{if defined(max_gap) then ("--maxgap " +  '"' + max_gap + '"') else ""}
  >>>
  parameter_meta {
    min_cov: "minimal coverage for each position of the interval (default: 1)"
    min_re_lcov: "minimal relative coverage (0 <= f <= 1, default: 0)"
    max_gap: "coverage gaps of maximal this length each are allowed (default: 0)"
    cat: ""
    in_do_twig: ""
  }
  output {
    File out_stdout = stdout()
  }
}