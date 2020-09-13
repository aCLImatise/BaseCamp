version 1.0

task EukRep {
  input {
    File? input_fasta_file
    File? output_file_name
    Boolean? ff
    Int? min
    File? model
    Int? km_er_len
    File? pro_karya
    Boolean? seq_names
    String? compatable__modelhow
    Int? tie
  }
  command <<<
    EukRep \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if (ff) then "-ff" else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(km_er_len) then ("--kmer_len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(pro_karya) then ("--prokarya " +  '"' + pro_karya + '"') else ""} \
      ~{if (seq_names) then "--seq_names" else ""} \
      ~{if defined(compatable__modelhow) then ("-m " +  '"' + compatable__modelhow + '"') else ""} \
      ~{if defined(tie) then ("--tie " +  '"' + tie + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "input fasta file"
    output_file_name: "output file name"
    ff: "Force overwrite of existing output files"
    min: "Minimum sequence length cutoff for sequences to be included in prediction. Default is 3kb"
    model: "Path to an alternate trained linear SVM model. Default is lin_svm_160_3.0.pickle"
    km_er_len: "Kmer length to use for making predictions. Lengths between 3-7bp are available by default. If using a custom trained model, specify kmer length here."
    pro_karya: "Name of file to output predicted prokaryotic sequences to. Default is to not output prokaryotic sequences."
    seq_names: "Only output fasta headers of identified sequences. Default is full fasta entry"
    compatable__modelhow: "Not compatable with --model.\\nHow stringent the algorithm is in identifying eukaryotic scaffolds. Strict has a lower false positive rate and true positive rate; vice verso for leneient. Default is balanced."
    tie: "Specify how to handle cases where an equal number of a sequences chunks are predicted to be of eukaryotic and prokaryotic origin (Generally occurs infrequently).\\neuk = classify as euk\\nprok = classify as prok\\nrand = assign randomly\\nskip = do not classify\\nDefault is to classify as eukaryotic.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_pro_karya = "${in_pro_karya}"
  }
}