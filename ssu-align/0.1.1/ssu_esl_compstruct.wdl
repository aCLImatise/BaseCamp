version 1.0

task Ssueslcompstruct {
  input {
    Boolean? use_mathewsrelaxed_criterion
    Boolean? count_pseudoknotted_pairs
    Boolean? quiet
    Boolean? options
  }
  command <<<
    ssu_esl_compstruct \
      ~{if (use_mathewsrelaxed_criterion) then "-m" else ""} \
      ~{if (count_pseudoknotted_pairs) then "-p" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    use_mathewsrelaxed_criterion: ": use Mathews'relaxed criterion for correctness; allow +/-1 slip"
    count_pseudoknotted_pairs: ": count pseudoknotted base pairs"
    quiet: ": suppress verbose header"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}