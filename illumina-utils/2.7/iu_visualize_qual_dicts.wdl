version 1.0

task IuVisualizeQualDicts {
  input {
    File? prefix__prefix
    String? title
    Boolean? split_tiles
    String qual_dict
  }
  command <<<
    iu-visualize-qual-dicts \
      ~{qual_dict} \
      ~{if defined(prefix__prefix) then ("-p " +  '"' + prefix__prefix + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{true="--split-tiles" false="" split_tiles}
  >>>
  parameter_meta {
    prefix__prefix: "PREFIX, --prefix FILE PREFIX Prefix for the output file(s)"
    title: "Title to appear at the top of the figure"
    split_tiles: "When set, quality curves will be shown separately for each tile"
    qual_dict: "cPickle dictionary that contains quality score info"
  }
}