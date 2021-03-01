version 1.0

task RiboSelect {
  input {
    Directory? output_directorydefault_none
    String? feature
    Int? specific_features
    Boolean? clobber
    Int? clusters
    Int? verbosity
    Boolean? debug
  }
  command <<<
    ribo select \
      ~{if defined(output_directorydefault_none) then ("--output " +  '"' + output_directorydefault_none + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(specific_features) then ("--specific_features " +  '"' + specific_features + '"') else ""} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directorydefault_none: "output directory;default: None"
    feature: "Feature, rRNA or RRNA; default: rRNA"
    specific_features: "colon:separated -- specific features; default:\\n16S:23S:5S"
    clobber: "overwrite previous output files: default: False"
    clusters: "number of rDNA clusters;if submitting multiple\\nrecords, must be a colon:separated list whose length\\nmatches number of genbank records. Default is inferred\\nfrom specific feature with fewest hits"
    verbosity: "1 = debug(), 2 = info(), 3 = warning(), 4 = error()\\nand 5 = critical(); default: 2"
    debug: "Enable debug messages"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directorydefault_none = "${in_output_directorydefault_none}"
  }
}