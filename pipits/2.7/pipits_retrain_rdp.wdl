version 1.0

task PipitsRetrainRdp {
  input {
    File? rdp_classifier_file
    String? unite_training_data_fasta
    File? unite_training_data_downloadedfrom
    Directory? output_directory_where
    String re_trains
    String rdp
    String classifier
  }
  command <<<
    pipits_retrain_rdp \
      ~{re_trains} \
      ~{rdp} \
      ~{classifier} \
      ~{if defined(rdp_classifier_file) then ("-j " +  '"' + rdp_classifier_file + '"') else ""} \
      ~{if defined(unite_training_data_fasta) then ("-f " +  '"' + unite_training_data_fasta + '"') else ""} \
      ~{if defined(unite_training_data_downloadedfrom) then ("-t " +  '"' + unite_training_data_downloadedfrom + '"') else ""} \
      ~{if defined(output_directory_where) then ("-o " +  '"' + output_directory_where + '"') else ""}
  >>>
  parameter_meta {
    rdp_classifier_file: "[REQUIRED] RDP Classifier .jar file"
    unite_training_data_fasta: "[REQUIRED] UNITE training data - FASTA sequences downloaded\\nfrom http://sourceforge.net/projects/rdp-\\nclassifier/files/RDP_Classifier_TrainingData"
    unite_training_data_downloadedfrom: "[REQUIRED] UNITE training data - taxonomy file downloaded\\nfrom http://sourceforge.net/projects/rdp-\\nclassifier/files/RDP_Classifier_TrainingData"
    output_directory_where: "Output directory where files and settings for retrained\\nparameters are stored.\\n"
    re_trains: ""
    rdp: ""
    classifier: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_where = "${in_output_directory_where}"
  }
}