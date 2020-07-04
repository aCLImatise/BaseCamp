version 1.0

task Mea {
  input {
    String? alpha
    String? beta
    String? gamma
    String? delta
    Int? plot_penalty
    String? reference
    String? structure
    Boolean? no_slide_rule
    Boolean? no_conflict_rule
    Boolean? verbose
    String ppv
    String fone
    String mcc
  }
  command <<<
    mea \
      ~{ppv} \
      ~{fone} \
      ~{mcc} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(plot_penalty) then ("--plot-penalty " +  '"' + plot_penalty + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(structure) then ("--structure " +  '"' + structure + '"') else ""} \
      ~{true="--no-slide-rule" false="" no_slide_rule} \
      ~{true="--no-conflict-rule" false="" no_conflict_rule} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    alpha: "slope of base pair distance penalty (default=`0.012')"
    beta: "turning point of base pair distance penalty (default=`315')"
    gamma: "base pair weight factor  (default=`0.5')"
    delta: "minimum penalty factor for base pairs (default=`0.003')"
    plot_penalty: "print penalty values between 4 and given value; don't fold"
    reference: "Reference structure (dot-bracket)"
    structure: "Structure (dot-bracket); if given, compare to reference only"
    no_slide_rule: "Use slide rule [default: use slide rule]"
    no_conflict_rule: "Use conflict rule [default: use conflict rule]"
    verbose: "Turn on verbose output"
    ppv: "= TP/(TP+FP) 'Positive Predictive Value'"
    fone: "= PPV*SENS / (PPV+SENS), if PPV+SENS!=0; 0, otherwise   'F1-score'"
    mcc: "= (TP*TN - FP*FN) / sqrt( (TP+FP)*(TP+FN)*(TN+FP)*(TN+FN) ) 'Mathews correlation coefficient'"
  }
}