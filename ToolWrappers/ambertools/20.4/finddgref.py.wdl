version 1.0

task Finddgrefpy {
  input {
    Boolean? author
    File? md_exec
    Float? target
    String? do_parallel
    File? log
    Int? res_num
    Float? dg_re_fest
    Float? dg_ref_range
    Float? dg_interval
    Int? max_steps
    Float? frac_threshold
    Boolean? no_equi
    Boolean? rm_outs
    File? bin_path
    File? amber_mdin_file
    File? amber_parmtop_file
    File? amber_inpcrd_input
    File? amber_mdcrd_output
    File? inf
    File? amber_mdout_log
    File? amber_mdout_file
    File? cp_in
    File? cp_out
    File? cpre_strt
    File? ce_in
    File? ce_out
    File? ceres_trt
    File? ref
    File? group_file
    String md_exec_dot
  }
  command <<<
    finddgref_py \
      ~{md_exec_dot} \
      ~{if (author) then "--author" else ""} \
      ~{if defined(md_exec) then ("-mdexec " +  '"' + md_exec + '"') else ""} \
      ~{if defined(target) then ("-target " +  '"' + target + '"') else ""} \
      ~{if defined(do_parallel) then ("-do_parallel " +  '"' + do_parallel + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(res_num) then ("-resnum " +  '"' + res_num + '"') else ""} \
      ~{if defined(dg_re_fest) then ("-dgrefest " +  '"' + dg_re_fest + '"') else ""} \
      ~{if defined(dg_ref_range) then ("-dgrefrange " +  '"' + dg_ref_range + '"') else ""} \
      ~{if defined(dg_interval) then ("-dginterval " +  '"' + dg_interval + '"') else ""} \
      ~{if defined(max_steps) then ("-maxsteps " +  '"' + max_steps + '"') else ""} \
      ~{if defined(frac_threshold) then ("-fracthreshold " +  '"' + frac_threshold + '"') else ""} \
      ~{if (no_equi) then "-noequi" else ""} \
      ~{if (rm_outs) then "-rmouts" else ""} \
      ~{if defined(bin_path) then ("-bin-path " +  '"' + bin_path + '"') else ""} \
      ~{if defined(amber_mdin_file) then ("-i " +  '"' + amber_mdin_file + '"') else ""} \
      ~{if defined(amber_parmtop_file) then ("-p " +  '"' + amber_parmtop_file + '"') else ""} \
      ~{if defined(amber_inpcrd_input) then ("-c " +  '"' + amber_inpcrd_input + '"') else ""} \
      ~{if defined(amber_mdcrd_output) then ("-x " +  '"' + amber_mdcrd_output + '"') else ""} \
      ~{if defined(inf) then ("-inf " +  '"' + inf + '"') else ""} \
      ~{if defined(amber_mdout_log) then ("-o " +  '"' + amber_mdout_log + '"') else ""} \
      ~{if defined(amber_mdout_file) then ("-r " +  '"' + amber_mdout_file + '"') else ""} \
      ~{if defined(cp_in) then ("-cpin " +  '"' + cp_in + '"') else ""} \
      ~{if defined(cp_out) then ("-cpout " +  '"' + cp_out + '"') else ""} \
      ~{if defined(cpre_strt) then ("-cprestrt " +  '"' + cpre_strt + '"') else ""} \
      ~{if defined(ce_in) then ("-cein " +  '"' + ce_in + '"') else ""} \
      ~{if defined(ce_out) then ("-ceout " +  '"' + ce_out + '"') else ""} \
      ~{if defined(ceres_trt) then ("-cerestrt " +  '"' + ceres_trt + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(group_file) then ("-groupfile " +  '"' + group_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    author: "show the program's author information and exit"
    md_exec: "Path to the AMBER executable file. Example:\\n$AMBERHOME/bin/pmemd"
    target: "Value of pH or Redox Potential (in Volts) that we\\nexpect to obtain a converged fraction of protonated or\\nreduced species close to 50%. This is the target value\\nof the pKa or Standard Redox Potential (Eo) of the\\nsystem at the end of the execution. Default: None"
    do_parallel: "Command preciding mdexec for parallel execution. Used\\nonly with Replica Exchange. Default: mpirun -np [-ng]"
    log: "When set, prints the log of the program execution to\\nan external file (-log FILENAME). If not set, print it\\nat the screen. Default: None"
    res_num: "Number of the residue in which the fraction of\\nprotonated or reduced species will be monitored.\\n(REQUIRED if the number of pH or Redox titratable\\nresidues is larger than 1)"
    dg_re_fest: "Estimated value of Delta G reference. When this flag\\nis given, the program starts in the last phase of\\nexecution, that is, on the phase of making more\\naccurate estimatives of Delta G reference. Note: if\\nthe value of -dgrefest is not close enough to the true\\nvalue of Delta G reference, the execution will fail.\\nDefault: None"
    dg_ref_range: "FLOAT\\nRange of values for Delta G reference. The desired\\nDelta G reference value has to be inside this range.\\nIf -dgrefest and -dgrefrange are not given, the\\nprogram will try to find a range automatically.\\nSuggestion: choose one value in which the fraction of\\nprotonated or reduced species is ~ 0 and the other\\nvalue in which it is ~ 1. Default: None"
    dg_interval: "When the values of the argument -dgrefrange are to be\\nfound automatically, dginterval is the interval of\\ntrial values. Default: 100.0 kcal/mol"
    max_steps: "Maximum number of AMBER executions. Default: 100"
    frac_threshold: "Fraction threshold. The fraction convergence criterium\\nis: 0.5-fracthreshold/2 >= frac >=\\n0.5+fracthreshold/2. Default: 0.03"
    no_equi: "If stated, the equilibration simulation for a new\\nDELTAGREF value will not be performed. Equilibration\\nruns for 10% the number of steps of the production\\nsimulation. Default: False"
    rm_outs: "If stated, at the end of the execution of the program,\\nerases all output files generated by AMBER (all files\\nnot stated as REQUIRED at \\\"AMBER Arguments\\\" below).\\nDefault: False"
    bin_path: "Path to the AMBER bin directory. Used to locate\\ncphstats, cestats or fitpkaeo.py (Example:\\n$AMBERHOME/bin ; Default: not set)."
    amber_mdin_file: "AMBER mdin file (REQUIRED)"
    amber_parmtop_file: "AMBER parmtop file (REQUIRED)"
    amber_inpcrd_input: "AMBER inpcrd (input coordinates) file (REQUIRED)"
    amber_mdcrd_output: "AMBER mdcrd (output coordinates) file"
    inf: "AMBER mdinfo file"
    amber_mdout_log: "AMBER mdout (log) file"
    amber_mdout_file: "AMBER mdout file"
    cp_in: "AMBER cpin file (REQUIRED if cein file is not given)"
    cp_out: "AMBER cpout file"
    cpre_strt: "AMBER cprestrt file"
    ce_in: "AMBER cein file (REQUIRED if cpin file is not given)"
    ce_out: "AMBER ceout file"
    ceres_trt: "AMBER cerestrt file"
    ref: "AMBER ref file"
    group_file: "AMBER groupfile file (REQUIRED)"
    md_exec_dot: "-ng INT               Number of groups/replicas (REQUIRED)"
  }
  output {
    File out_stdout = stdout()
    File out_amber_mdcrd_output = "${in_amber_mdcrd_output}"
  }
}