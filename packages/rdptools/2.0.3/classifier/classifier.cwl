class: CommandLineTool
id: ../../../classifier.cwl
inputs:
- id: in_bootstrap_outfile
  doc: "the output file containing the number of\nmatching assignments out of 100\
    \ bootstraps for\nmajor ranks. Default is null"
  type: long
  inputBinding:
    prefix: --bootstrap_outfile
- id: in_conf
  doc: "assignment confidence cutoff used to determine\nthe assignment count for each\
    \ taxon. Range\n[0-1], Default is 0.8."
  type: double
  inputBinding:
    prefix: --conf
- id: in_metadata
  doc: "the tab delimited metadata file for the samples,\nwith first row containing\
    \ attribute name and\nfirst column containing the sample name"
  type: File
  inputBinding:
    prefix: --metadata
- id: in_format
  doc: "tab-delimited output format:\n[allrank|fixrank|biom|filterbyconf|db]. Default\n\
    is allRank.\nallrank: outputs the results for all ranks\napplied for each sequence:\
    \ seqname, orientation,\ntaxon name, rank, conf, ...\nfixrank: only outputs the\
    \ results for fixed\nranks in order: domain, phylum, class, order,\nfamily, genus\n\
    biom: outputs rich dense biom format if OTU or\nmetadata provided\nfilterbyconf:\
    \ only outputs the results for major\nranks as in fixrank, results below the\n\
    confidence cutoff were bin to a higher rank\nunclassified_node\ndb: outputs the\
    \ seqname, trainset_no, tax_id,\nconf."
  type: string
  inputBinding:
    prefix: --format
- id: in_gene
  doc: "16srrna, fungallsu, fungalits_warcup,\nfungalits_unite. Default is 16srrna.\
    \ This option\ncan be overwritten by -t option"
  type: long
  inputBinding:
    prefix: --gene
- id: in_hier_outfile
  doc: "tab-delimited output file containing the\nassignment count for each taxon\
    \ in the\nhierarchical format. Default is null."
  type: File
  inputBinding:
    prefix: --hier_outfile
- id: in_biom_file
  doc: "the input clluster biom file. The classification\nresult will replace the\
    \ taxonomy of the\ncorresponding cluster id."
  type: File
  inputBinding:
    prefix: --biomFile
- id: in_output_file
  doc: "tab-delimited text output file for\nclassification assignment."
  type: File
  inputBinding:
    prefix: --outputFile
- id: in_query_file
  doc: legacy option, no longer needed
  type: boolean
  inputBinding:
    prefix: --queryFile
- id: in_short_seq_outfile
  doc: "the output file containing the sequence names\nthat are too short to be classified"
  type: File
  inputBinding:
    prefix: --shortseq_outfile
- id: in_train_prop_file
  doc: "property file containing the mapping of the\ntraining files if not using the\
    \ default. Note:\nthe training files and the property file should\nbe in the same\
    \ directory."
  type: File
  inputBinding:
    prefix: --train_propfile
- id: in_min_words
  doc: "minimum number of words for each bootstrap\ntrial. Default(maximum) is 1/8\
    \ of the words of\neach sequence. Minimum is 5\n"
  type: long
  inputBinding:
    prefix: --minWords
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_hier_outfile
  doc: "tab-delimited output file containing the\nassignment count for each taxon\
    \ in the\nhierarchical format. Default is null."
  type: File
  outputBinding:
    glob: $(inputs.in_hier_outfile)
- id: out_output_file
  doc: "tab-delimited text output file for\nclassification assignment."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_short_seq_outfile
  doc: "the output file containing the sequence names\nthat are too short to be classified"
  type: File
  outputBinding:
    glob: $(inputs.in_short_seq_outfile)
cwlVersion: v1.1
baseCommand:
- classifier
