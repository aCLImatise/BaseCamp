version 1.0

task EvalDualdecomppl {
  input {
    File? intput_augustus_file
    File? directory_recognized_out
    String? hist_iterations
    String? hist_errors
    Int? err_per_iter
    Int? threshold_percentage_initial
    Directory? outdir
  }
  command <<<
    eval_dualdecomp_pl \
      ~{if defined(intput_augustus_file) then ("--f " +  '"' + intput_augustus_file + '"') else ""} \
      ~{if defined(directory_recognized_out) then ("--d " +  '"' + directory_recognized_out + '"') else ""} \
      ~{if defined(hist_iterations) then ("--hist_iterations " +  '"' + hist_iterations + '"') else ""} \
      ~{if defined(hist_errors) then ("--hist_errors " +  '"' + hist_errors + '"') else ""} \
      ~{if defined(err_per_iter) then ("--err_per_iter " +  '"' + err_per_iter + '"') else ""} \
      ~{if defined(threshold_percentage_initial) then ("--t " +  '"' + threshold_percentage_initial + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    intput_augustus_file: "intput AUGUSTUS file"
    directory_recognized_out: "directory of input AUGUSTUS files (recognized by .out file extension)"
    hist_iterations: "output histogram of iterations to out.pdf"
    hist_errors: "output histogram of error estimates to out.pdf for all cases, where\\nno convergence is achieved."
    err_per_iter: "plots the average percentage of initial error against the iterations to out.pdf.\\nIf after a certain number of iterations the error no further drops,\\nearly stopping is recommended, i.e. in the next run, the number of\\nDD iterations can be restricted to this number of iterations."
    threshold_percentage_initial: "threshold for percentage of initial error. For all cases with an estimated\\nerror higher than this threshold, the evolution of primal an dual values\\nare plotted against the iterations. This helps debugging cases with a\\nhigh error estimate. The threshold is between [0-100] (default: 5)"
    outdir: "put all plots in this output directory"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}