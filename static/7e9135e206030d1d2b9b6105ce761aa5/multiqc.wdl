version 1.0

task Multiqc {
  input {
    Boolean? force
    Boolean? dirs
    Int? dirs_depth
    Boolean? full_names
    File? title
    String? comment
    File? filename
    String? outdir
    String? tag
    Boolean? view_tags
    String? ignore
    String? ignore_samples
    Boolean? ignore_symlinks
    File? sample_names
    File? sample_filters
    Boolean? exclude
    Boolean? export
    Boolean? flat
    Boolean? interactive
    Boolean? lint
    Boolean? no_mega_qc_upload
    File? config
    String? cl_config
    Boolean? quiet
    Boolean? profile_runtime
    Boolean? no_ansi
    String report
    String tsv
    String development
    String line
  }
  command <<<
    multiqc \
      ~{report} \
      ~{tsv} \
      ~{development} \
      ~{line} \
      ~{if (force) then "--force" else ""} \
      ~{if (dirs) then "--dirs" else ""} \
      ~{if defined(dirs_depth) then ("--dirs-depth " +  '"' + dirs_depth + '"') else ""} \
      ~{if (full_names) then "--fullnames" else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if (view_tags) then "--view-tags" else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(ignore_samples) then ("--ignore-samples " +  '"' + ignore_samples + '"') else ""} \
      ~{if (ignore_symlinks) then "--ignore-symlinks" else ""} \
      ~{if defined(sample_names) then ("--sample-names " +  '"' + sample_names + '"') else ""} \
      ~{if defined(sample_filters) then ("--sample-filters " +  '"' + sample_filters + '"') else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if (export) then "--export" else ""} \
      ~{if (flat) then "--flat" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if (lint) then "--lint" else ""} \
      ~{if (no_mega_qc_upload) then "--no-megaqc-upload" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(cl_config) then ("--cl-config " +  '"' + cl_config + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (profile_runtime) then "--profile-runtime" else ""} \
      ~{if (no_ansi) then "--no-ansi" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Overwrite any existing reports"
    dirs: "Prepend directory to sample names"
    dirs_depth: "Prepend [INT] directories to sample names.\\nNegative number to take from start of path."
    full_names: "Do not clean the sample names (leave as full\\nfile name)"
    title: "Report title. Printed as page header, used\\nfor filename if not otherwise specified."
    comment: "Custom comment, will be printed at the top\\nof the report."
    filename: "Report filename. Use 'stdout' to print to\\nstandard out."
    outdir: "Create report in the specified output"
    tag: "Use only modules which tagged with this\\nkeyword, eg. RNA"
    view_tags: "View the available tags and which modules\\nthey load"
    ignore: "Ignore analysis files (glob expression)"
    ignore_samples: "Ignore sample names (glob expression)"
    ignore_symlinks: "Ignore symlinked directories and files"
    sample_names: "File containing alternative sample names"
    sample_filters: "File containing show/hide patterns for the"
    exclude: "[module name]     Do not use this module. Can specify multiple"
    export: "Export plots as static images in addition to\\nthe report"
    flat: "Use only flat plots (static images)"
    interactive: "Use only interactive plots (HighCharts\\nJavascript)"
    lint: "Use strict linting (validation) to help code"
    no_mega_qc_upload: "Don't upload generated report to MegaQC,\\neven if MegaQC options are found"
    config: "Specific config file to load, after those in\\nMultiQC dir / home dir / working dir."
    cl_config: "Specify MultiQC config YAML on the command"
    quiet: "Only show log warnings"
    profile_runtime: "Add analysis of how long MultiQC takes to\\nrun to the report"
    no_ansi: "Disable coloured log output"
    report: "-l, --file-list                 Supply a file containing a list of file"
    tsv: "-z, --zip-data-dir              Compress the data directory."
    development: "--pdf                           Creates PDF report with 'simple' template."
    line: "-v, --verbose                   Increase output verbosity."
  }
  output {
    File out_stdout = stdout()
    File out_filename = "${in_filename}"
  }
}