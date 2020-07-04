version 1.0

task Falco {
  input {
    Boolean? outdir
    Boolean? casa_va
    Boolean? nano
    Boolean? no_filter
    Boolean? no_extract
    Boolean? nogroup
    Boolean? format
    Boolean? threads
    Boolean? contaminants
    Boolean? adapters
    Boolean? limits
    Boolean? skip_text
    Boolean? skip_html
    Boolean? skip_short_summary
    Boolean? quiet
    Boolean? dir
    Boolean? advanced_mode
    Boolean? bisulfite
    Boolean? reverse_complement
    Boolean? about
  }
  command <<<
    falco \
      ~{true="--outdir" false="" outdir} \
      ~{true="--casava" false="" casa_va} \
      ~{true="--nano" false="" nano} \
      ~{true="--nofilter" false="" no_filter} \
      ~{true="--noextract" false="" no_extract} \
      ~{true="--nogroup" false="" nogroup} \
      ~{true="--format" false="" format} \
      ~{true="--threads" false="" threads} \
      ~{true="--contaminants" false="" contaminants} \
      ~{true="--adapters" false="" adapters} \
      ~{true="--limits" false="" limits} \
      ~{true="--skip-text" false="" skip_text} \
      ~{true="--skip-html" false="" skip_html} \
      ~{true="--skip-short-summary" false="" skip_short_summary} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--dir" false="" dir} \
      ~{true="--advanced-mode" false="" advanced_mode} \
      ~{true="--bisulfite" false="" bisulfite} \
      ~{true="--reverse-complement" false="" reverse_complement} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    outdir: "Create all output files in the specified  output directory. If notprovided, files  will be created in the same directory as  the input file. "
    casa_va: "Files come from raw casava output  (currently ignored) "
    nano: "Files come from fast5 nanopore sequences "
    no_filter: "If running with --casava do not sequences  (currently ignored) "
    no_extract: "If running with --casava do not remove poor  quality sequences (currently ignored) "
    nogroup: "Disable grouping of bases for reads >50bp "
    format: "Force file format "
    threads: "Specifies number of simultaneous files "
    contaminants: "Non-default filer with a list of  contaminants "
    adapters: "Non-default file with a list of adapters "
    limits: "Non-default file with limits and warn/fail  criteria "
    skip_text: "Skip generating text file (Default = false) "
    skip_html: "Skip generating HTML file (Default = false) "
    skip_short_summary: "Skip short summary(Default = false) "
    quiet: "print more run info "
    dir: "directory in which to create temp files "
    advanced_mode: "advanced mode: adds more information to the  FastQC output depending on non-fastqc user  flags "
    bisulfite: "reads are whole genome bisulfite  sequencing, and more Ts and fewer Cs are  therefore expected and will be accounted  for in base content (advanced mode) "
    reverse_complement: "The input is a reverse-complement. All  modules will be tested by swapping A/T and  C/G "
    about: "print about message "
  }
}