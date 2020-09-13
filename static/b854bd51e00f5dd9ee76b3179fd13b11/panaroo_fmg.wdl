version 1.0

task Panaroofmg {
  input {
    String? tree
    String? pa
    File? outfile
    Int? n_boot
    Boolean? verbose
    String perform_dot
  }
  command <<<
    panaroo_fmg \
      ~{perform_dot} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(pa) then ("--pa " +  '"' + pa + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(n_boot) then ("--nboot " +  '"' + n_boot + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    tree: "A dated phylogeny."
    pa: "A presence/absence produced by Panaroo."
    outfile: "Name of outputfile."
    n_boot: "The number of sub-sampling bootstrap iterations to"
    verbose: "print additional output"
    perform_dot: "-t N_CPU, --threads N_CPU"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}