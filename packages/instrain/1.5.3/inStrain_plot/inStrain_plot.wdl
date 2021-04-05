version 1.0

task InStrainPlot {
  input {
    String? is
    Boolean? pl
    Float? minimum_breadth
    Boolean? only_plot_genomes
    Int? processes
    Boolean? debug
    String? plots
  }
  command <<<
    inStrain plot \
      ~{plots} \
      ~{if defined(is) then ("--IS " +  '"' + is + '"') else ""} \
      ~{if (pl) then "-pl" else ""} \
      ~{if defined(minimum_breadth) then ("--minimum_breadth " +  '"' + minimum_breadth + '"') else ""} \
      ~{if (only_plot_genomes) then "-g" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/instrain:1.5.3--py_0"
  }
  parameter_meta {
    is: "an inStrain profile object (default: None)"
    pl: "[PLOTS [PLOTS ...]], --plots [PLOTS [PLOTS ...]]\\nPlots. Input 'all' or 'a' to plot all\\n1) Coverage and breadth vs. read mismatches\\n2) Genome-wide microdiversity metrics\\n3) Read-level ANI distribution\\n4) Major allele frequencies\\n5) Linkage decay\\n6) Read filtering plots\\n7) Scaffold inspection plot (large)\\n8) Linkage with SNP type (GENES REQUIRED)\\n9) Gene histograms (GENES REQUIRED)\\n10) Compare dendrograms (RUN ON COMPARE; NOT PROFILE)\\n(default: a)"
    minimum_breadth: "Minimum breadth of coverage for genome to make it into\\nplot (from 0-1). (default: 0.5)"
    only_plot_genomes: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\\nOnly plot genomes with the names provided in this\\nargument (default: None)"
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    plots: ""
  }
  output {
    File out_stdout = stdout()
  }
}