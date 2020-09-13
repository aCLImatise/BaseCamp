version 1.0

task QualimapClustering {
  input {
    Int? bin_size
    String? clusters
    String? control
    String? expr
    Int? fragment_length
    Int? upstream_offset_default
    String? name
    Directory? outdir
    File? outfile
    String? out_format
    File? r_script_path
    Int? downstream_offset_default
    File? regions
    String? sample
    String? viz
  }
  command <<<
    qualimap clustering \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(control) then ("-control " +  '"' + control + '"') else ""} \
      ~{if defined(expr) then ("-expr " +  '"' + expr + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(upstream_offset_default) then ("-l " +  '"' + upstream_offset_default + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(outdir) then ("-outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("-outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(out_format) then ("-outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(r_script_path) then ("--rscriptpath " +  '"' + r_script_path + '"') else ""} \
      ~{if defined(downstream_offset_default) then ("-r " +  '"' + downstream_offset_default + '"') else ""} \
      ~{if defined(regions) then ("-regions " +  '"' + regions + '"') else ""} \
      ~{if defined(sample) then ("-sample " +  '"' + sample + '"') else ""} \
      ~{if defined(viz) then ("-viz " +  '"' + viz + '"') else ""}
  >>>
  parameter_meta {
    bin_size: "Size of the bin (default is 100)"
    clusters: "Comma-separated list of cluster sizes"
    control: "Comma-separated list of control BAM files"
    expr: "Name of the experiment"
    fragment_length: "Smoothing length of a fragment"
    upstream_offset_default: "Upstream offset (default is 2000)"
    name: "Comma-separated names of the replicates"
    outdir: "Output folder for HTML report and raw data."
    outfile: "Output file for PDF report (default value is\\nreport.pdf)."
    out_format: "Format of the output report (PDF, HTML or both\\nPDF:HTML, default is HTML)."
    r_script_path: "Path to Rscript executable (by default it is\\nassumed to be available from system $PATH)"
    downstream_offset_default: "Downstream offset (default is 500)"
    regions: "Path to regions file"
    sample: "Comma-separated list of sample BAM files"
    viz: "Visualization type: heatmap or line"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_outfile = "${in_outfile}"
  }
}