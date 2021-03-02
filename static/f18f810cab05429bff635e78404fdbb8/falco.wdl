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
    Boolean? nondefault_filer_list
    Boolean? limits
    Boolean? skip_html
    Boolean? skip_short_summary
    Boolean? quiet
    Boolean? dir
    Boolean? advanced_mode
    Boolean? bisulfite
    Boolean? reverse_complement
    Boolean? about
    String _adapters_nondefault
    String criteria
  }
  command <<<
    falco \
      ~{_adapters_nondefault} \
      ~{criteria} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (casa_va) then "--casava" else ""} \
      ~{if (nano) then "--nano" else ""} \
      ~{if (no_filter) then "--nofilter" else ""} \
      ~{if (no_extract) then "--noextract" else ""} \
      ~{if (nogroup) then "--nogroup" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (nondefault_filer_list) then "--contaminants" else ""} \
      ~{if (limits) then "--limits" else ""} \
      ~{if (skip_html) then "--skip-html" else ""} \
      ~{if (skip_short_summary) then "--skip-short-summary" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (advanced_mode) then "--advanced-mode" else ""} \
      ~{if (bisulfite) then "--bisulfite" else ""} \
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Create all output files in the specified\\noutput directory. If notprovided, files\\nwill be created in the same directory as\\nthe input file."
    casa_va: "Files come from raw casava output\\n(currently ignored)"
    nano: "Files come from fast5 nanopore sequences"
    no_filter: "If running with --casava do not sequences\\n(currently ignored)"
    no_extract: "If running with --casava do not remove poor\\nquality sequences (currently ignored)"
    nogroup: "Disable grouping of bases for reads >50bp"
    format: "Force file format"
    threads: "Specifies number of simultaneous files"
    nondefault_filer_list: "Non-default filer with a list of"
    limits: "Non-default file with limits and warn/fail"
    skip_html: "Skip generating HTML file (Default = false)"
    skip_short_summary: "Skip short summary(Default = false)"
    quiet: "print more run info"
    dir: "directory in which to create temp files"
    advanced_mode: "advanced mode: adds more information to the\\nFastQC output depending on non-fastqc user\\nflags"
    bisulfite: "reads are whole genome bisulfite\\nsequencing, and more Ts and fewer Cs are\\ntherefore expected and will be accounted\\nfor in base content (advanced mode)"
    reverse_complement: "The input is a reverse-complement. All\\nmodules will be tested by swapping A/T and\\nC/G"
    about: "print about message"
    _adapters_nondefault: "-a, --adapters            Non-default file with a list of adapters "
    criteria: "-T, --skip-text           Skip generating text file (Default = false) "
  }
  output {
    File out_stdout = stdout()
  }
}