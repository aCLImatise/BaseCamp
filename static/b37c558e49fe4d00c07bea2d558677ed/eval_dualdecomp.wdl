version 1.0

task EvalDualdecomp.pl {
  input {
    File? intput_augustus_file
    String? directory_input_augustus
    String? hist_iterations
    String? hist_errors
    String? err_per_iter
    String? threshold_percentage_initial
    String? outdir
  }
  command <<<
    eval_dualdecomp.pl \
      ~{if defined(intput_augustus_file) then ("--f " +  '"' + intput_augustus_file + '"') else ""} \
      ~{if defined(directory_input_augustus) then ("--d " +  '"' + directory_input_augustus + '"') else ""} \
      ~{if defined(hist_iterations) then ("--hist_iterations " +  '"' + hist_iterations + '"') else ""} \
      ~{if defined(hist_errors) then ("--hist_errors " +  '"' + hist_errors + '"') else ""} \
      ~{if defined(err_per_iter) then ("--err_per_iter " +  '"' + err_per_iter + '"') else ""} \
      ~{if defined(threshold_percentage_initial) then ("--t " +  '"' + threshold_percentage_initial + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    intput_augustus_file: "intput AUGUSTUS file "
    directory_input_augustus: "directory of input AUGUSTUS files (recognized by .out file extension)"
    hist_iterations: "output histogram of iterations to out.pdf"
    hist_errors: "output histogram of error estimates to out.pdf for all cases, where no convergence is achieved."
    err_per_iter: "plots the average percentage of initial error against the iterations to out.pdf. If after a certain number of iterations the error no further drops,  early stopping is recommended, i.e. in the next run, the number of  DD iterations can be restricted to this number of iterations."
    threshold_percentage_initial: "threshold for percentage of initial error. For all cases with an estimated error higher than this threshold, the evolution of primal an dual values are plotted against the iterations. This helps debugging cases with a high error estimate. The threshold is between [0-100] (default: 5)"
    outdir: "put all plots in this output directory"
  }
}