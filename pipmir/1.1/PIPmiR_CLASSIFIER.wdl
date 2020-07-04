version 1.0

task PIPmiRCLASSIFIER {
  input {
    String? minimum_read_count
    Int? maximum_amount_pipmir
    String? file_containing_trainingdatadat
    Boolean? creates_log_file
    String? p
    String? a
    String? o
  }
  command <<<
    PIPmiR CLASSIFIER \
      ~{if defined(minimum_read_count) then ("-m " +  '"' + minimum_read_count + '"') else ""} \
      ~{if defined(maximum_amount_pipmir) then ("-X " +  '"' + maximum_amount_pipmir + '"') else ""} \
      ~{if defined(file_containing_trainingdatadat) then ("-T " +  '"' + file_containing_trainingdatadat + '"') else ""} \
      ~{true="-d" false="" creates_log_file} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    minimum_read_count: "Minimum read count for a mature to be considered expressed (Default: 10)"
    maximum_amount_pipmir: "Maximum amount of memory PIPmiR can use (Default: 4G)"
    file_containing_trainingdatadat: "File containing classifier training data (Default: TrainingData.dat)"
    creates_log_file: "Creates a log file of PIPmiR results at <output_header>_log.csv"
    p: ""
    a: ""
    o: ""
  }
}