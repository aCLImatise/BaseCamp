version 1.0

task RNAcode {
  input {
    File? outfile
    Boolean? gtf
    Boolean? tabular
    Boolean? best_only
    Boolean? best_region
    Boolean? stop_early
    Boolean? num_samples
    Boolean? cut_off
    Boolean? pars
    Boolean? eps
    Boolean? eps_cut_off
    Boolean? eps_dir
  }
  command <<<
    RNAcode \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (tabular) then "--tabular" else ""} \
      ~{if (best_only) then "--best-only" else ""} \
      ~{if (best_region) then "--best-region" else ""} \
      ~{if (stop_early) then "--stop-early" else ""} \
      ~{if (num_samples) then "--num-samples" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (pars) then "--pars" else ""} \
      ~{if (eps) then "--eps" else ""} \
      ~{if (eps_cut_off) then "--eps-cutoff" else ""} \
      ~{if (eps_dir) then "--eps-dir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "Output file  (default: stdout)"
    gtf: "Format output as GTF"
    tabular: "Format output as tab delimited fields"
    best_only: "Show only best hit"
    best_region: "Show only best non-overlapping hits"
    stop_early: "Don't calculate p-values for hits likely to be above cutoff"
    num_samples: "Number of samples to calculate p-value (default: 100)"
    cut_off: "p-value cutoff (default: 1.0)"
    pars: "Parameters as comma separated string (see README for details)"
    eps: "Create colored plots in EPS format"
    eps_cut_off: "Create plots only if p better than this cutoff (default: 0.05)"
    eps_dir: "Directory to put eps-files (default: eps)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}