class: CommandLineTool
id: classifier.cwl
inputs:
- id: bootstrap_outfile
  doc: the output file containing the number of matching assignments out of 100 bootstraps
    for major ranks. Default is null
  type: string
  inputBinding:
    prefix: --bootstrap_outfile
- id: conf
  doc: assignment confidence cutoff used to determine the assignment count for each
    taxon. Range [0-1], Default is 0.8.
  type: string
  inputBinding:
    prefix: --conf
- id: metadata
  doc: the tab delimited metadata file for the samples, with first row containing
    attribute name and first column containing the sample name
  type: string
  inputBinding:
    prefix: --metadata
- id: format
  doc: 'tab-delimited output format: [allrank|fixrank|biom|filterbyconf|db]. Default
    is allRank. allrank: outputs the results for all ranks applied for each sequence:
    seqname, orientation, taxon name, rank, conf, ... fixrank: only outputs the results
    for fixed ranks in order: domain, phylum, class, order, family, genus biom: outputs
    rich dense biom format if OTU or metadata provided filterbyconf: only outputs
    the results for major ranks as in fixrank, results below the confidence cutoff
    were bin to a higher rank unclassified_node db: outputs the seqname, trainset_no,
    tax_id, conf.'
  type: string
  inputBinding:
    prefix: --format
- id: gene
  doc: 16srrna, fungallsu, fungalits_warcup, fungalits_unite. Default is 16srrna.
    This option can be overwritten by -t option
  type: string
  inputBinding:
    prefix: --gene
- id: hier_outfile
  doc: tab-delimited output file containing the assignment count for each taxon in
    the hierarchical format. Default is null.
  type: string
  inputBinding:
    prefix: --hier_outfile
- id: biom_file
  doc: the input clluster biom file. The classification result will replace the taxonomy
    of the corresponding cluster id.
  type: string
  inputBinding:
    prefix: --biomFile
- id: output_file
  doc: tab-delimited text output file for classification assignment.
  type: string
  inputBinding:
    prefix: --outputFile
- id: query_file
  doc: legacy option, no longer needed
  type: boolean
  inputBinding:
    prefix: --queryFile
- id: short_seq_outfile
  doc: the output file containing the sequence names that are too short to be classified
  type: string
  inputBinding:
    prefix: --shortseq_outfile
- id: train_prop_file
  doc: 'property file containing the mapping of the training files if not using the
    default. Note: the training files and the property file should be in the same
    directory.'
  type: string
  inputBinding:
    prefix: --train_propfile
- id: min_words
  doc: minimum number of words for each bootstrap trial. Default(maximum) is 1/8 of
    the words of each sequence. Minimum is 5
  type: string
  inputBinding:
    prefix: --minWords
outputs: []
cwlVersion: v1.1
baseCommand:
- classifier
