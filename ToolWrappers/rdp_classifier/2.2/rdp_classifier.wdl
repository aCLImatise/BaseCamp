version 1.0

task RdpClassifier {
  input {
    String? format
    File? output_file
    File? query_file
    File? train_prop_file
    String classifier_cmd
  }
  command <<<
    rdp_classifier \
      ~{classifier_cmd} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{if defined(query_file) then ("--queryFile " +  '"' + query_file + '"') else ""} \
      ~{if defined(train_prop_file) then ("--train_propfile " +  '"' + train_prop_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "all tab delimited output format: [allrank|fixrank|db]. Default is allrank.\\nallrank: outputs the results for all ranks applied for each sequence: seqname, orientation,\\ntaxon name, rank, conf, ...\\nfixrank: only outputs the results for fixed ranks in order: no rank, domain, phylum, class,\\norder, family, genus\\ndb: outputs the seqname, trainset_no, tax_id, conf. This is good for storing in a database"
    output_file: "output file name for classification assignment"
    query_file: "query file contains sequences in one of the following formats: Fasta, Genbank and EMBL"
    train_prop_file: "a property file contains the mapping of the training files.\\nNote: the training files and the property file should be in the same directory.\\nThe default property file is set to data/classifier/rRNAClassifier.properties.\\n"
    classifier_cmd: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}