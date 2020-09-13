version 1.0

task Generatenamespl {
  input {
    Directory? out
    String? tracks
    Boolean? compress
    Boolean? incremental
    Int? location_limit
    Int? mem
    String? workdir
    Int? completion_limit
    Boolean? verbose
    String generate_names_do_tpl
  }
  command <<<
    generate_names_pl \
      ~{generate_names_do_tpl} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(tracks) then ("--tracks " +  '"' + tracks + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (incremental) then "--incremental" else ""} \
      ~{if defined(location_limit) then ("--locationLimit " +  '"' + location_limit + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(completion_limit) then ("--completionLimit " +  '"' + completion_limit + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    out: "Data directory to process. Default 'data/'."
    tracks: "[,...]\\nComma-separated list of which tracks to include in the names index.\\nIf not passed, all tracks are indexed."
    compress: "If passed, gzip the JSON files in the index, naming them *.jsonz\\ninstead of *.json. Like the --compress option for\\nflatfile-to-json.pl and prepare-refseqs.pl, if you use this option\\nyou must configure your web server to serve these files with the\\ncorrect Content-Encoding HTTP header. See the JBrowse Configuration\\nGuide on the GMOD wiki for help with this."
    incremental: "| -i\\nDo not completely rebuild the names index in the given location,\\nonly insert new names into it."
    location_limit: "Maximum number of distinct locations to store for a single name.\\nDefault 100."
    mem: "Number of bytes of RAM we are allowed to use for caching memory.\\nDefault 256000000 (256 MiB). If your machine has enough RAM,\\nincreasing this can speed up this script's running time\\nsignificantly."
    workdir: "Use the given location for building the names index, copying the\\nindex over to the destination location when fully built. By default,\\nbuilds the index in the output location.\\nName indexing is a very I/O intensive operation, because the\\nfilesystem is used to store intermediate results in order to keep\\nthe RAM usage reasonable. If a fast filesystem (e.g. tmpfs) is\\navailable and large enough, indexing can be speeded up by using it\\nto store the intermediate results of name indexing."
    completion_limit: "Maximum number of name completions to store for a given prefix.\\nDefault 20. Set to 0 to disable auto-completion of feature names.\\nNote that the name index always contains exact matches for feature\\nnames; this setting only disables autocompletion based on incomplete\\nnames."
    verbose: "Print more progress messages."
    generate_names_do_tpl: "\\\\n[ --out <output directory> ]         \\\\n[ --verbose ]"
  }
  output {
    File out_stdout = stdout()
  }
}