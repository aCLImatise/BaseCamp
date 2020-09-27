version 1.0

task SvmGridModellingpy {
  input {
    Boolean? log_two_c
    Boolean? log_two_g
    Int? nfold_cross_validation
    File? svm_train
    Boolean? gnuplot
    File? out
    File? png
    File? resume
    String grid_do_tpy
    String? grid_options
    String? svm_options
    String dataset
  }
  command <<<
    svm_grid_modelling_py \
      ~{grid_do_tpy} \
      ~{grid_options} \
      ~{svm_options} \
      ~{dataset} \
      ~{if (log_two_c) then "-log2c" else ""} \
      ~{if (log_two_g) then "-log2g" else ""} \
      ~{if defined(nfold_cross_validation) then ("-v " +  '"' + nfold_cross_validation + '"') else ""} \
      ~{if defined(svm_train) then ("-svmtrain " +  '"' + svm_train + '"') else ""} \
      ~{if (gnuplot) then "-gnuplot" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if defined(png) then ("-png " +  '"' + png + '"') else ""} \
      ~{if (resume) then "-resume" else ""}
  >>>
  parameter_meta {
    log_two_c: "{begin,end,step | \\\"null\\\"} : set the range of c (default -5,15,2)\\nbegin,end,step -- c_range = 2^{begin,...,begin+k*step,...,end}\\n\\\"null\\\"         -- do not grid with c"
    log_two_g: "{begin,end,step | \\\"null\\\"} : set the range of g (default 3,-15,-2)\\nbegin,end,step -- g_range = 2^{begin,...,begin+k*step,...,end}\\n\\\"null\\\"         -- do not grid with g"
    nfold_cross_validation: ": n-fold cross validation (default 5)"
    svm_train: ": set svm executable path and name"
    gnuplot: "{pathname | \\\"null\\\"} :\\npathname -- set gnuplot executable path and name\\n\\\"null\\\"   -- do not plot"
    out: "{pathname | \\\"null\\\"} : (default dataset.out)\\npathname -- set output file path and name\\n\\\"null\\\"   -- do not output file"
    png: ": set graphic output file path and name (default dataset.png)"
    resume: "[pathname] : resume the grid task using an existing output file (default pathname is dataset.out)\\nThis is experimental. Try this option only if some parameters have been checked for the SAME data."
    grid_do_tpy: ""
    grid_options: ""
    svm_options: ""
    dataset: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_png = "${in_png}"
    File out_resume = "${in_resume}"
  }
}