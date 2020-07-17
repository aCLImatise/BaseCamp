version 1.0

task BigBedInfo {
  input {
    Boolean? udc_dir
    Boolean? chrom_s
    Boolean? zooms
    Boolean? get_autosql_spec
    Boolean? extra_index
    File file_dot_bb
  }
  command <<<
    bigBedInfo \
      ~{file_dot_bb} \
      ~{true="-udcDir" false="" udc_dir} \
      ~{true="-chroms" false="" chrom_s} \
      ~{true="-zooms" false="" zooms} \
      ~{true="-as" false="" get_autosql_spec} \
      ~{true="-extraIndex" false="" extra_index}
  >>>
  parameter_meta {
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    chrom_s: "- list all chromosomes and their sizes"
    zooms: "- list all zoom levels and their sizes"
    get_autosql_spec: "- get autoSql spec"
    extra_index: "- list all the extra indexes"
    file_dot_bb: ""
  }
}