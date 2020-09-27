version 1.0

task Refeature {
  input {
    String? include_only
    File? include_groups
    Boolean? sort
    Boolean? unique
    String? group_by
    String? exon_group
    Boolean? fix_start_stop
    Boolean? add_utrs
    Boolean? add_introns
    Boolean? add_signals
    Int? bedgenepredwigoutput_format_default
    Boolean? simple_bed
    File? discards
    String in_file
  }
  command <<<
    refeature \
      ~{in_file} \
      ~{if defined(include_only) then ("--include-only " +  '"' + include_only + '"') else ""} \
      ~{if defined(include_groups) then ("--include-groups " +  '"' + include_groups + '"') else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if defined(group_by) then ("--groupby " +  '"' + group_by + '"') else ""} \
      ~{if defined(exon_group) then ("--exongroup " +  '"' + exon_group + '"') else ""} \
      ~{if (fix_start_stop) then "--fix-start-stop" else ""} \
      ~{if (add_utrs) then "--add-utrs" else ""} \
      ~{if (add_introns) then "--add-introns" else ""} \
      ~{if (add_signals) then "--add-signals" else ""} \
      ~{if defined(bedgenepredwigoutput_format_default) then ("--output " +  '"' + bedgenepredwigoutput_format_default + '"') else ""} \
      ~{if (simple_bed) then "--simplebed" else ""} \
      ~{if defined(discards) then ("--discards " +  '"' + discards + '"') else ""}
  >>>
  parameter_meta {
    include_only: "Include only features of the specified types (comma-delimited list);\\nfilter out everything else."
    include_groups: "Include only groups whose names are listed in the specified file.\\nGroup names in file must be delimited by white-space (can be on\\nany number of lines)."
    sort: "Sort features primarily by start position and secondarily\\nby end position (usually has desired effect in case of short\\noverlapping features, e.g., start & stop codons).  Features\\nwill be sorted both across groups and within groups, but members\\nof a group will be kept together."
    unique: "Ensures that output contains no overlapping groups (or\\nsubgroups, if -e).  If groups overlap, the one with the highest\\nscore (if available) or longest length (if no score) is kept and\\nothers are discarded.  Warning: long UTRs can have undesirable\\nresults; filter out UTR exons to avoid."
    group_by: "Group features according to specified tag (default \\\"transcript_id\\\")"
    exon_group: "Sub-group features into contiguous sets, and define\\nsub-groups using specified tag (e.g., \\\"exon_id\\\").  Can be\\nused to group the features describing individual exons, e.g.,\\neach CDS and its flanking splice sites.  Only features in the\\nsame major group will be included in the same minor group\\n(e.g., exons of the same transcript)."
    fix_start_stop: "Ensure that CDS features include start codons and exclude stop\\ncodons, as required by the GTF2 standard.  Assumes at most one\\nstart_codon and at most one stop_codon per group."
    add_utrs: "Create UTR features for portions of exons outside CDS (only\\nuseful with GFF output; features must be grouped at level\\nof transcript)."
    add_introns: "Create intron features between exons (only useful with GFF output;\\nfeatures must be grouped at level of transcript)."
    add_signals: "Adds features for start and stop codons and 3' and 5' splice\\nsites (only useful with GFF output; features must be grouped\\nat level of transcript).  Start and stop codons will be added\\nas required by the GTF2 standard (--fix-start-stop is not\\nnecessary).  Warning: does not correctly handle case of splice\\nsite in middle of start or stop codon."
    bedgenepredwigoutput_format_default: "|bed|genepred|wig\\nOutput format (default gff).  Note that wig output is fixedStep\\ncan only be used if all elements have a score and are of equal\\nlength."
    simple_bed: "(for use with --output bed) Create a separate line for each\\nfeature in bed output (by default, all features of a group are\\ndescribed by a single line)."
    discards: "Write any discarded features to specified file."
    in_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}