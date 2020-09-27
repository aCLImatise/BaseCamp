class: CommandLineTool
id: rdp_classifier.cwl
inputs:
- id: in_format
  doc: "all tab delimited output format: [allrank|fixrank|db]. Default is allrank.\n\
    allrank: outputs the results for all ranks applied for each sequence: seqname,\
    \ orientation,\ntaxon name, rank, conf, ...\nfixrank: only outputs the results\
    \ for fixed ranks in order: no rank, domain, phylum, class,\norder, family, genus\n\
    db: outputs the seqname, trainset_no, tax_id, conf. This is good for storing in\
    \ a database"
  type: string
  inputBinding:
    prefix: --format
- id: in_output_file
  doc: output file name for classification assignment
  type: File
  inputBinding:
    prefix: --outputFile
- id: in_query_file
  doc: 'query file contains sequences in one of the following formats: Fasta, Genbank
    and EMBL'
  type: File
  inputBinding:
    prefix: --queryFile
- id: in_train_prop_file
  doc: "a property file contains the mapping of the training files.\nNote: the training\
    \ files and the property file should be in the same directory.\nThe default property\
    \ file is set to data/classifier/rRNAClassifier.properties.\n"
  type: File
  inputBinding:
    prefix: --train_propfile
- id: in_classifier_cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file name for classification assignment
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- rdp_classifier
