version 1.0

task Macs2Bdgcmp {
  input {
    File? t_file
    File? c_file
    Int? scaling_factor
    Float? pseudo_count
    String? method_use_calculating
    Directory? outdir
    File? o_prefix
    Array[String] ofile
  }
  command <<<
    macs2 bdgcmp \
      ~{if defined(t_file) then ("--tfile " +  '"' + t_file + '"') else ""} \
      ~{if defined(c_file) then ("--cfile " +  '"' + c_file + '"') else ""} \
      ~{if defined(scaling_factor) then ("--scaling-factor " +  '"' + scaling_factor + '"') else ""} \
      ~{if defined(pseudo_count) then ("--pseudocount " +  '"' + pseudo_count + '"') else ""} \
      ~{if defined(method_use_calculating) then ("-m " +  '"' + method_use_calculating + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(o_prefix) then ("--o-prefix " +  '"' + o_prefix + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t_file: "Treatment bedGraph file, e.g. *_treat_pileup.bdg from\\nMACSv2. REQUIRED"
    c_file: "Control bedGraph file, e.g. *_control_lambda.bdg from\\nMACSv2. REQUIRED"
    scaling_factor: "Scaling factor for treatment and control track. Keep\\nit as 1.0 or default in most cases. Set it ONLY while\\nyou have SPMR output from MACS2 callpeak, and plan to\\ncalculate scores as MACS2 callpeak module. If you want\\nto simulate 'callpeak' w/o '--to-large', calculate\\neffective smaller sample size after filtering redudant\\nreads in million (e.g., put 31.415926 if effective\\nreads are 31,415,926) and input it for '-S'; for\\n'callpeak --to-large', calculate effective reads in\\nlarger sample. DEFAULT: 1.0"
    pseudo_count: "The pseudocount used for calculating logLR, logFE or\\nFE. The count will be applied after normalization of\\nsequencing depth. DEFAULT: 0.0, no pseudocount is\\napplied."
    method_use_calculating: "[{ppois,qpois,subtract,logFE,FE,logLR,slogLR,max} ...], --method {ppois,qpois,subtract,logFE,FE,logLR,slogLR,max} [{ppois,qpois,subtract,logFE,FE,logLR,slogLR,max} ...]\\nMethod to use while calculating a score in any bin by\\ncomparing treatment value and control value. Available\\nchoices are: ppois, qpois, subtract, logFE, logLR, and\\nslogLR. They represent Poisson Pvalue (-log10(pvalue)\\nform) using control as lambda and treatment as\\nobservation, q-value through a BH process for poisson\\npvalues, subtraction from treatment, linear scale fold\\nenrichment, log10 fold enrichment(need to set\\npseudocount), log10 likelihood between ChIP-enriched\\nmodel and open chromatin model(need to set\\npseudocount), symmetric log10 likelihood between two\\nChIP-enrichment models, or maximum value between the\\ntwo tracks. Default option is ppois."
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    o_prefix: "The PREFIX of output bedGraph file to write scores. If\\nit is given as A, and method is 'ppois', output file\\nwill be A_ppois.bdg. Mutually exclusive with\\n-o/--ofile."
    ofile: "Output filename. Mutually exclusive with --o-prefix.\\nThe number and the order of arguments for --ofile must\\nbe the same as for -m.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_o_prefix = "${in_o_prefix}"
  }
}