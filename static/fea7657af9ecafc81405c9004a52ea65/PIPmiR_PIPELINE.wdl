version 1.0

task PIPmiRPIPELINE {
  input {
    Int? minimum_size_precursor
    Int? maximum_size_precursor
    String? step_size_calculating
    String? minimum_read_count
    String? number_threads_pipmir
    Int? maximum_amount_pipmir
    String? file_containing_trainingdatadat
    String? location_rnafold_default
    Boolean? creates_log_file
    String? a
    String? var_10
    String? o
  }
  command <<<
    PIPmiR PIPELINE \
      ~{if defined(minimum_size_precursor) then ("-l " +  '"' + minimum_size_precursor + '"') else ""} \
      ~{if defined(maximum_size_precursor) then ("-L " +  '"' + maximum_size_precursor + '"') else ""} \
      ~{if defined(step_size_calculating) then ("-s " +  '"' + step_size_calculating + '"') else ""} \
      ~{if defined(minimum_read_count) then ("-m " +  '"' + minimum_read_count + '"') else ""} \
      ~{if defined(number_threads_pipmir) then ("-p " +  '"' + number_threads_pipmir + '"') else ""} \
      ~{if defined(maximum_amount_pipmir) then ("-X " +  '"' + maximum_amount_pipmir + '"') else ""} \
      ~{if defined(file_containing_trainingdatadat) then ("-T " +  '"' + file_containing_trainingdatadat + '"') else ""} \
      ~{if defined(location_rnafold_default) then ("-R " +  '"' + location_rnafold_default + '"') else ""} \
      ~{true="-d" false="" creates_log_file} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(var_10) then ("-t " +  '"' + var_10 + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    minimum_size_precursor: "Minimum size for a precursor sequence (Default: 50)"
    maximum_size_precursor: "Maximum size for a precursor sequence (Default: 500)"
    step_size_calculating: "Step size for calculating precursor sequence (Default: 2)"
    minimum_read_count: "Minimum read count for a mature to be considered expressed (Default: 10)"
    number_threads_pipmir: "Number of threads the PIPmiR can use (Default: 1)"
    maximum_amount_pipmir: "Maximum amount of memory PIPmiR can use (Default: 4G)"
    file_containing_trainingdatadat: "File containing classifier training data (Default: TrainingData.dat)"
    location_rnafold_default: "Location of RNAfold (Default: /home/dc97/bin/RNAfold)"
    creates_log_file: "Creates a log file of PIPmiR results at <output_header>_log.csv"
    a: ""
    var_10: ""
    o: ""
  }
}