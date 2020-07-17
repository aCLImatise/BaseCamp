version 1.0

task Multiqc {
  input {
    Boolean? force
    Boolean? dirs
    Int? dirs_depth
    Boolean? full_names
    String? title
    String? comment
    String? filename
    String? outdir
    Boolean? template
    String? tag
    Boolean? view_tags
    String? ignore
    String? ignore_samples
    Boolean? ignore_symlinks
    File? sample_names
    File? sample_filters
    Boolean? file_list
    Boolean? exclude
    Boolean? module
    Boolean? data_dir
    Boolean? no_data_dir
    Boolean? data_format
    Boolean? zip_data_dir
    Boolean? export
    Boolean? flat
    Boolean? interactive
    Boolean? lint
    Boolean? pdf
    Boolean? no_mega_qc_upload
    File? config
    String? cl_config
    Boolean? verbose
    Boolean? quiet
    Boolean? profile_runtime
    Boolean? no_ansi
    String analysis_directory
  }
  command <<<
    multiqc \
      ~{analysis_directory} \
      ~{true="--force" false="" force} \
      ~{true="--dirs" false="" dirs} \
      ~{if defined(dirs_depth) then ("--dirs-depth " +  '"' + dirs_depth + '"') else ""} \
      ~{true="--fullnames" false="" full_names} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--template" false="" template} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{true="--view-tags" false="" view_tags} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(ignore_samples) then ("--ignore-samples " +  '"' + ignore_samples + '"') else ""} \
      ~{true="--ignore-symlinks" false="" ignore_symlinks} \
      ~{if defined(sample_names) then ("--sample-names " +  '"' + sample_names + '"') else ""} \
      ~{if defined(sample_filters) then ("--sample-filters " +  '"' + sample_filters + '"') else ""} \
      ~{true="--file-list" false="" file_list} \
      ~{true="--exclude" false="" exclude} \
      ~{true="--module" false="" module} \
      ~{true="--data-dir" false="" data_dir} \
      ~{true="--no-data-dir" false="" no_data_dir} \
      ~{true="--data-format" false="" data_format} \
      ~{true="--zip-data-dir" false="" zip_data_dir} \
      ~{true="--export" false="" export} \
      ~{true="--flat" false="" flat} \
      ~{true="--interactive" false="" interactive} \
      ~{true="--lint" false="" lint} \
      ~{true="--pdf" false="" pdf} \
      ~{true="--no-megaqc-upload" false="" no_mega_qc_upload} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(cl_config) then ("--cl-config " +  '"' + cl_config + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--profile-runtime" false="" profile_runtime} \
      ~{true="--no-ansi" false="" no_ansi}
  >>>
  parameter_meta {
    force: "Overwrite any existing reports"
    dirs: "Prepend directory to sample names"
    dirs_depth: "Prepend [INT] directories to sample names. Negative number to take from start of path."
    full_names: "Do not clean the sample names (leave as full file name)"
    title: "Report title. Printed as page header, used for filename if not otherwise specified."
    comment: "Custom comment, will be printed at the top of the report."
    filename: "Report filename. Use 'stdout' to print to standard out."
    outdir: "Create report in the specified output directory."
    template: "[default|default_dev|gathered|geo|sections|simple] Report template to use."
    tag: "Use only modules which tagged with this keyword, eg. RNA"
    view_tags: "View the available tags and which modules they load"
    ignore: "Ignore analysis files (glob expression)"
    ignore_samples: "Ignore sample names (glob expression)"
    ignore_symlinks: "Ignore symlinked directories and files"
    sample_names: "File containing alternative sample names"
    sample_filters: "File containing show/hide patterns for the report"
    file_list: "Supply a file containing a list of file paths to be searched, one per row"
    exclude: "[module name]     Do not use this module. Can specify multiple times."
    module: "[module name]      Use only this module. Can specify multiple times."
    data_dir: "Force the parsed data directory to be created."
    no_data_dir: "Prevent the parsed data directory from being created."
    data_format: "[tsv|json|yaml] Output parsed data in a different format. Default: tsv"
    zip_data_dir: "Compress the data directory."
    export: "Export plots as static images in addition to the report"
    flat: "Use only flat plots (static images)"
    interactive: "Use only interactive plots (HighCharts Javascript)"
    lint: "Use strict linting (validation) to help code development"
    pdf: "Creates PDF report with 'simple' template. Requires Pandoc to be installed."
    no_mega_qc_upload: "Don't upload generated report to MegaQC, even if MegaQC options are found"
    config: "Specific config file to load, after those in MultiQC dir / home dir / working dir."
    cl_config: "Specify MultiQC config YAML on the command line"
    verbose: "Increase output verbosity."
    quiet: "Only show log warnings"
    profile_runtime: "Add analysis of how long MultiQC takes to run to the report"
    no_ansi: "Disable coloured log output"
    analysis_directory: ""
  }
}