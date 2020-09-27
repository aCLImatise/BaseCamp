version 1.0

task MeaEval {
  input {
    Float? alpha
    Int? beta
    Float? gamma
    Float? delta
    File? dp_dir
    File? pred
    Int? start
    Int? stop
    Boolean? no_slide_rule
    Boolean? no_conflict_rule
    Boolean? verbose
    String me_a
    String input_file
  }
  command <<<
    mea_eval \
      ~{me_a} \
      ~{input_file} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(dp_dir) then ("--dpdir " +  '"' + dp_dir + '"') else ""} \
      ~{if defined(pred) then ("--pred " +  '"' + pred + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if (no_slide_rule) then "--no-slide-rule" else ""} \
      ~{if (no_conflict_rule) then "--no-conflict-rule" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    alpha: "slope of base pair distance penalty\\n(default=`0.012')"
    beta: "turning point of base pair distance penalty\\n(default=`315')"
    gamma: "base pair weight factor  (default=`0.5')"
    delta: "minimum penalty factor for base pairs\\n(default=`0.003')"
    dp_dir: "Path to dot plot files  (default=`')"
    pred: "File with predicted structures to compare with input"
    start: "Restrict start of base pair span range  (default=`1')"
    stop: "Restrict start of base pair span range  (default=`0')"
    no_slide_rule: "Use slide rule [default: use slide rule]"
    no_conflict_rule: "Use conflict rule [default: use conflict rule]"
    verbose: "Turn on verobose output"
    me_a: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}