version 1.0

task Classifier {
  input {
    String? bootstrap_outfile
    String? conf
    String? metadata
    String? format
    String? gene
    String? hier_outfile
    String? biom_file
    String? output_file
    Boolean? query_file
    String? short_seq_outfile
    String? train_prop_file
    String? min_words
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
      ~{true="--queryFile" false="" query_file} \
      ~{if defined(short_seq_outfile) then ("--shortseq_outfile " +  '"' + short_seq_outfile + '"') else ""} \
      ~{if defined(train_prop_file) then ("--train_propfile " +  '"' + train_prop_file + '"') else ""} \
      ~{if defined(min_words) then ("--minWords " +  '"' + min_words + '"') else ""}
  >>>
  parameter_meta {
    bootstrap_outfile: "the output file containing the number of matching assignments out of 100 bootstraps for major ranks. Default is null"
    conf: "assignment confidence cutoff used to determine the assignment count for each taxon. Range [0-1], Default is 0.8."
    metadata: "the tab delimited metadata file for the samples, with first row containing attribute name and first column containing the sample name"
    format: "tab-delimited output format: [allrank|fixrank|biom|filterbyconf|db]. Default is allRank. allrank: outputs the results for all ranks applied for each sequence: seqname, orientation, taxon name, rank, conf, ... fixrank: only outputs the results for fixed ranks in order: domain, phylum, class, order, family, genus biom: outputs rich dense biom format if OTU or metadata provided filterbyconf: only outputs the results for major ranks as in fixrank, results below the confidence cutoff were bin to a higher rank unclassified_node db: outputs the seqname, trainset_no, tax_id, conf."
    gene: "16srrna, fungallsu, fungalits_warcup, fungalits_unite. Default is 16srrna. This option can be overwritten by -t option"
    hier_outfile: "tab-delimited output file containing the assignment count for each taxon in the hierarchical format. Default is null."
    biom_file: "the input clluster biom file. The classification result will replace the taxonomy of the corresponding cluster id."
    output_file: "tab-delimited text output file for classification assignment."
    query_file: "legacy option, no longer needed"
    short_seq_outfile: "the output file containing the sequence names that are too short to be classified"
    train_prop_file: "property file containing the mapping of the training files if not using the default. Note: the training files and the property file should be in the same directory."
    min_words: "minimum number of words for each bootstrap trial. Default(maximum) is 1/8 of the words of each sequence. Minimum is 5"
  }
}