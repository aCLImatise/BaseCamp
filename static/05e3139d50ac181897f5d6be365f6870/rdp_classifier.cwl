class: CommandLineTool
id: rdp_classifier.cwl
inputs:
- id: format
  doc: 'all tab delimited output format: [allrank|fixrank|db]. Default is allrank.
    allrank: outputs the results for all ranks applied for each sequence: seqname,
    orientation, taxon name, rank, conf, ... fixrank: only outputs the results for
    fixed ranks in order: no rank, domain, phylum, class, order, family, genus db:
    outputs the seqname, trainset_no, tax_id, conf. This is good for storing in a
    database'
  type: string
  inputBinding:
    prefix: --format
- id: output_file
  doc: output file name for classification assignment
  type: string
  inputBinding:
    prefix: --outputFile
- id: query_file
  doc: 'query file contains sequences in one of the following formats: Fasta, Genbank
    and EMBL'
  type: string
  inputBinding:
    prefix: --queryFile
- id: train_prop_file
  doc: 'a property file contains the mapping of the training files. Note: the training
    files and the property file should be in the same directory. The default property
    file is set to data/classifier/rRNAClassifier.properties.'
  type: string
  inputBinding:
    prefix: --train_propfile
outputs: []
cwlVersion: v1.1
baseCommand:
- rdp_classifier
