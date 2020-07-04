version 1.0

task EslCompstruct {
  input {
    Boolean? use_mathewsrelaxed_criterion
    Boolean? count_pseudoknotted_pairs
    Boolean? quiet
    Boolean? options
  }
  command <<<
    esl-compstruct \
      ~{true="-m" false="" use_mathewsrelaxed_criterion} \
      ~{true="-p" false="" count_pseudoknotted_pairs} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    use_mathewsrelaxed_criterion: ": use Mathews'relaxed criterion for correctness; allow +/-1 slip"
    count_pseudoknotted_pairs: ": count pseudoknotted base pairs"
    quiet: ": suppress verbose header"
    options: ""
  }
}