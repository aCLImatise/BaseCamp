version 1.0

task RgthintTraining {
  input {
    File? reads_file
    File? bias_table
    Boolean? semi_supervised
    File? signal_file
    String? organism
  }
  command <<<
    rgt_hint training \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""} \
      ~{if defined(bias_table) then ("--bias-table " +  '"' + bias_table + '"') else ""} \
      ~{if (semi_supervised) then "--semi-supervised" else ""} \
      ~{if defined(signal_file) then ("--signal-file " +  '"' + signal_file + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""}
  >>>
  parameter_meta {
    reads_file: "The BAM file containing the DNase-seq or ATAC-seq"
    bias_table: ",FILE1_R"
    semi_supervised: "If used, HMM model will be trained using semi-"
    signal_file: "The txt file containing the DNase-seq or ATAC-seq"
    organism: ""
  }
  output {
    File out_stdout = stdout()
  }
}