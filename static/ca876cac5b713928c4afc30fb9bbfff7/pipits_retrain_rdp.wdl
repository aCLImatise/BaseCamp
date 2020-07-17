version 1.0

task PipitsRetrainRdp {
  input {
    String? rdp_classifier_file
    String? unite_training_data_sequences
    String? unite_training_data_taxonomy
    String? output_directory_stored
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
      ~{if defined(unite_training_data_sequences) then ("-f " +  '"' + unite_training_data_sequences + '"') else ""} \
      ~{if defined(unite_training_data_taxonomy) then ("-t " +  '"' + unite_training_data_taxonomy + '"') else ""} \
      ~{if defined(output_directory_stored) then ("-o " +  '"' + output_directory_stored + '"') else ""}
  >>>
  parameter_meta {
    rdp_classifier_file: "[REQUIRED] RDP Classifier .jar file"
    unite_training_data_sequences: "[REQUIRED] UNITE training data - FASTA sequences downloaded from http://sourceforge.net/projects/rdp- classifier/files/RDP_Classifier_TrainingData"
    unite_training_data_taxonomy: "[REQUIRED] UNITE training data - taxonomy file downloaded from http://sourceforge.net/projects/rdp- classifier/files/RDP_Classifier_TrainingData"
    output_directory_stored: "Output directory where files and settings for retrained parameters are stored."
    re_trains: ""
    rdp: ""
    classifier: ""
  }
}