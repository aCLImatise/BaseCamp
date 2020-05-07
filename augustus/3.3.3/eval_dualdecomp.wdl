version 1.0

task EvalDualdecomp.pl {
  input {
    File fF
    String dD
    String histHistIterations
    String histHistErrors
    String errErrPerIter
    String tT
    String outdirOutdir
  }
  command <<<
    eval_dualdecomp.pl \
      ~{if defined(fF) then ("--f " +  '"' + fF + '"') else ""} \
      ~{if defined(dD) then ("--d " +  '"' + dD + '"') else ""} \
      ~{if defined(histHistIterations) then ("--hist_iterations " +  '"' + histHistIterations + '"') else ""} \
      ~{if defined(histHistErrors) then ("--hist_errors " +  '"' + histHistErrors + '"') else ""} \
      ~{if defined(errErrPerIter) then ("--err_per_iter " +  '"' + errErrPerIter + '"') else ""} \
      ~{if defined(tT) then ("--t " +  '"' + tT + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}