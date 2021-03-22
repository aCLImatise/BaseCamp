version 1.0

task GseapyReplot {
  input {
    String? in_dir
    Directory? outdir
    Boolean? format
    Float? fs
    Int? graph
    Boolean? no_plot
    Boolean? verbose
    String job
  }
  command <<<
    gseapy replot \
      ~{job} \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(fs) then ("--fs " +  '"' + fs + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (no_plot) then "--no-plot" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gseapy:0.10.4--py_0"
  }
  parameter_meta {
    in_dir: "The GSEA desktop results directroy that you want to\\nreproduce the figure"
    outdir: "The GSEApy output directory. Default: the current\\nworking directory"
    format: "File extensions supported by Matplotlib active\\nbackend, choose from {'pdf', 'png', 'jpeg','ps',\\n'eps','svg'}. Default: 'pdf'."
    fs: "height, --figsize width height\\nThe figsize keyword argument need two parameters to\\ndefine. Default: (6.5, 6)"
    graph: "Numbers of top graphs produced. Default: 20"
    no_plot: "Speed up computing by suppressing the plot output.This\\nis useful only if data are interested. Default: False."
    verbose: "Increase output verbosity, print out progress of your"
    job: "-w float, --weight float"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}