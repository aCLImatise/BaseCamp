version 1.0

task RdpClassifier {
  input {
    String? format
    String? output_file
    String? query_file
    String? train_prop_file
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
  parameter_meta {
    format: "all tab delimited output format: [allrank|fixrank|db]. Default is allrank. allrank: outputs the results for all ranks applied for each sequence: seqname, orientation, taxon name, rank, conf, ... fixrank: only outputs the results for fixed ranks in order: no rank, domain, phylum, class, order, family, genus db: outputs the seqname, trainset_no, tax_id, conf. This is good for storing in a database"
    output_file: "output file name for classification assignment"
    query_file: "query file contains sequences in one of the following formats: Fasta, Genbank and EMBL"
    train_prop_file: "a property file contains the mapping of the training files. Note: the training files and the property file should be in the same directory. The default property file is set to data/classifier/rRNAClassifier.properties."
    classifier_cmd: ""
  }
}