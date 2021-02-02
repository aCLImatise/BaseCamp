version 1.0

task Classifier {
  input {
    Int? bootstrap_outfile
    Float? conf
    File? metadata
    String? format
    Int? gene
    File? hier_outfile
    File? biom_file
    File? output_file
    Boolean? query_file
    File? short_seq_outfile
    File? train_prop_file
    Int? min_words
  }
  command <<<
    classifier \
      ~{if defined(bootstrap_outfile) then ("--bootstrap_outfile " +  '"' + bootstrap_outfile + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(hier_outfile) then ("--hier_outfile " +  '"' + hier_outfile + '"') else ""} \
      ~{if defined(biom_file) then ("--biomFile " +  '"' + biom_file + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{if (query_file) then "--queryFile" else ""} \
      ~{if defined(short_seq_outfile) then ("--shortseq_outfile " +  '"' + short_seq_outfile + '"') else ""} \
      ~{if defined(train_prop_file) then ("--train_propfile " +  '"' + train_prop_file + '"') else ""} \
      ~{if defined(min_words) then ("--minWords " +  '"' + min_words + '"') else ""}
  >>>
  parameter_meta {
    bootstrap_outfile: "the output file containing the number of\\nmatching assignments out of 100 bootstraps for\\nmajor ranks. Default is null"
    conf: "assignment confidence cutoff used to determine\\nthe assignment count for each taxon. Range\\n[0-1], Default is 0.8."
    metadata: "the tab delimited metadata file for the samples,\\nwith first row containing attribute name and\\nfirst column containing the sample name"
    format: "tab-delimited output format:\\n[allrank|fixrank|biom|filterbyconf|db]. Default\\nis allRank.\\nallrank: outputs the results for all ranks\\napplied for each sequence: seqname, orientation,\\ntaxon name, rank, conf, ...\\nfixrank: only outputs the results for fixed\\nranks in order: domain, phylum, class, order,\\nfamily, genus\\nbiom: outputs rich dense biom format if OTU or\\nmetadata provided\\nfilterbyconf: only outputs the results for major\\nranks as in fixrank, results below the\\nconfidence cutoff were bin to a higher rank\\nunclassified_node\\ndb: outputs the seqname, trainset_no, tax_id,\\nconf."
    gene: "16srrna, fungallsu, fungalits_warcup,\\nfungalits_unite. Default is 16srrna. This option\\ncan be overwritten by -t option"
    hier_outfile: "tab-delimited output file containing the\\nassignment count for each taxon in the\\nhierarchical format. Default is null."
    biom_file: "the input clluster biom file. The classification\\nresult will replace the taxonomy of the\\ncorresponding cluster id."
    output_file: "tab-delimited text output file for\\nclassification assignment."
    query_file: "legacy option, no longer needed"
    short_seq_outfile: "the output file containing the sequence names\\nthat are too short to be classified"
    train_prop_file: "property file containing the mapping of the\\ntraining files if not using the default. Note:\\nthe training files and the property file should\\nbe in the same directory."
    min_words: "minimum number of words for each bootstrap\\ntrial. Default(maximum) is 1/8 of the words of\\neach sequence. Minimum is 5\\n"
  }
  output {
    File out_stdout = stdout()
    File out_hier_outfile = "${in_hier_outfile}"
    File out_output_file = "${in_output_file}"
    File out_short_seq_outfile = "${in_short_seq_outfile}"
  }
}