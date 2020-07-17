version 1.0

task PIPmiRPRECURSOR {
  input {
    Int? minimum_size_precursor
    Int? maximum_size_precursor
    String? step_size_calculating
    String? number_threads_pipmir
    Int? maximum_amount_pipmir
    String? location_rnafold_default
    Boolean? creates_log_file
    String? b
    String? t
    String? o
  }
  command <<<
    PIPmiR PRECURSOR \
      ~{if defined(minimum_size_precursor) then ("-l " +  '"' + minimum_size_precursor + '"') else ""} \
      ~{if defined(maximum_size_precursor) then ("-L " +  '"' + maximum_size_precursor + '"') else ""} \
      ~{if defined(step_size_calculating) then ("-s " +  '"' + step_size_calculating + '"') else ""} \
      ~{if defined(number_threads_pipmir) then ("-p " +  '"' + number_threads_pipmir + '"') else ""} \
      ~{if defined(maximum_amount_pipmir) then ("-X " +  '"' + maximum_amount_pipmir + '"') else ""} \
      ~{if defined(location_rnafold_default) then ("-R " +  '"' + location_rnafold_default + '"') else ""} \
      ~{true="-d" false="" creates_log_file} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    minimum_size_precursor: "Minimum size for a precursor sequence (Default: 50)"
    maximum_size_precursor: "Maximum size for a precursor sequence (Default: 500)"
    step_size_calculating: "Step size for calculating precursor sequence (Default: 2)"
    number_threads_pipmir: "Number of threads the PIPmiR can use (Default: 1)"
    maximum_amount_pipmir: "Maximum amount of memory PIPmiR can use (Default: 4G)"
    location_rnafold_default: "Location of RNAfold (Default: /home/dc97/bin/RNAfold)"
    creates_log_file: "Creates a log file of PIPmiR results at <output_header>_log.csv"
    b: ""
    t: ""
    o: ""
  }
}