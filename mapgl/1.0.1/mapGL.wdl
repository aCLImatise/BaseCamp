version 1.0

task MapGL.py {
  input {
    File? output_file_default
    Float? threshold
    String? gap
    String? verbose
    Boolean? drop_split
    String? in_format
    Boolean? full_labels
    String input_regions_process
    String tree
    String qname
    String t_name
    String alignments
  }
  command <<<
    mapGL.py \
      ~{input_regions_process} \
      ~{tree} \
      ~{qname} \
      ~{t_name} \
      ~{alignments} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--drop_split" false="" drop_split} \
      ~{if defined(in_format) then ("--in_format " +  '"' + in_format + '"') else ""} \
      ~{true="--full_labels" false="" full_labels}
  >>>
  parameter_meta {
    output_file_default: "Output file. Default stdout. (default: stdout)"
    threshold: "Mapping threshold i.e., |elem| * threshold <= |mapped_elem|. Default = 0.0 -- equivalent to accepting a single-base overlap. On the other end of the spectrum, setting this value to 1 is equivalent to only accepting full-length overlaps. (default: 0.0)"
    gap: "Ignore elements with an insertion/deletion of this or bigger size. Using the default value (-1) will allow gaps of any size. (default: -1)"
    verbose: "Verbosity level (default: info)"
    drop_split: "If elements span multiple chains, report them as non- mapping. These will then be reported as gains or losses, according to the maximum-parsimony predictions. This is the default mapping behavior for bnMapper. By default, mapGL.pys will follow the mapping convention used by liftOver, whereas the longest mapped alignment is reported for split elements. (default: False)"
    in_format: "Input file format. (Default: BED) (default: BED)"
    full_labels: "Attempt to predict gain/loss events on all branches of the tree, not just query/target branches. Output will include a comma-delimited list of gain/loss events from any/all affected branches. (default: False)"
    input_regions_process: "Input regions to process. Should be in standard bed format. Only the first four bed fields will be used."
    tree: "Tree, in standard Newick format, with or without branch lengths, describing relationships of query and target species to outgroups. May be given as a string or file."
    qname: "Name of the query species. Regions from this species will be mapped to target species coordinates."
    t_name: "Name of the target species. Regions from the query species will be mapped to coordinates from this species."
    alignments: "Alignment files (.chain or .pkl): One for the target species and one per outgroup species. Files should be named according to the convention: qname.tname[...].chain.gz, where qname is the query species name and tname is the name of the target/outgroup species. Names used for qname and tname must match names used in the newick tree."
  }
}