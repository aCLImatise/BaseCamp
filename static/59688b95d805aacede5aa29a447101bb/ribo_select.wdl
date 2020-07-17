version 1.0

task RiboSelect {
  input {
    String? output_directorydefault_none
    String? feature
    String? specific_features
    Boolean? clobber
    String? clusters
    String? verbosity
    Boolean? debug
    String genbank_genome
  }
  command <<<
    ribo select \
      ~{genbank_genome} \
      ~{if defined(output_directorydefault_none) then ("--output " +  '"' + output_directorydefault_none + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(specific_features) then ("--specific_features " +  '"' + specific_features + '"') else ""} \
      ~{true="--clobber" false="" clobber} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    output_directorydefault_none: "output directory;default: None"
    feature: "Feature, rRNA or RRNA; default: rRNA"
    specific_features: "colon:separated -- specific features; default: 16S:23S:5S"
    clobber: "overwrite previous output files: default: False"
    clusters: "number of rDNA clusters;if submitting multiple records, must be a colon:separated list whose length matches number of genbank records. Default is inferred from specific feature with fewest hits"
    verbosity: "1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    debug: "Enable debug messages"
    genbank_genome: "Genbank file (WITH SEQUENCE)"
  }
}