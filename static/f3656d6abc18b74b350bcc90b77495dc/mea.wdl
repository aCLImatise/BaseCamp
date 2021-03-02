version 1.0

task Mea {
  input {
    Float? alpha
    Int? beta
    Float? gamma
    Float? delta
    Int? plot_penalty
    String? structure
    Boolean? no_slide_rule
    Boolean? no_conflict_rule
    Boolean? verbose
    String fold
    String tp
    String fp
    String fn
    String tn
    String ppv
    Int fone
    String mcc
  }
  command <<<
    mea \
      ~{fold} \
      ~{tp} \
      ~{fp} \
      ~{fn} \
      ~{tn} \
      ~{ppv} \
      ~{fone} \
      ~{mcc} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(plot_penalty) then ("--plot-penalty " +  '"' + plot_penalty + '"') else ""} \
      ~{if defined(structure) then ("--structure " +  '"' + structure + '"') else ""} \
      ~{if (no_slide_rule) then "--no-slide-rule" else ""} \
      ~{if (no_conflict_rule) then "--no-conflict-rule" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alpha: "slope of base pair distance penalty\\n(default=`0.012')"
    beta: "turning point of base pair distance penalty\\n(default=`315')"
    gamma: "base pair weight factor  (default=`0.5')"
    delta: "minimum penalty factor for base pairs\\n(default=`0.003')"
    plot_penalty: "print penalty values between 4 and given value; don't"
    structure: "Structure (dot-bracket); if given, compare to\\nreference only"
    no_slide_rule: "Use slide rule [default: use slide rule]"
    no_conflict_rule: "Use conflict rule [default: use conflict rule]"
    verbose: "Turn on verbose output"
    fold: "-r, --reference=STRING  Reference structure (dot-bracket)"
    tp: "= # true positives"
    fp: "= # false positives"
    fn: "= # false negatives"
    tn: "= # true negatives"
    ppv: "= TP/(TP+FP) 'Positive Predictive Value'"
    fone: "= PPV*SENS / (PPV+SENS), if PPV+SENS!=0; 0, otherwise   'F1-score'"
    mcc: "= (TP*TN - FP*FN) / sqrt( (TP+FP)*(TP+FN)*(TN+FP)*(TN+FN) )\\n'Mathews correlation coefficient'"
  }
  output {
    File out_stdout = stdout()
  }
}