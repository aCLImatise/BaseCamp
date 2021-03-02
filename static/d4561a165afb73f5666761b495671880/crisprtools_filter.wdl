version 1.0

task CrisprtoolsFilter {
  input {
    File? output_file_name
    Int? filter_based_spacers
    Int? filter_based_direct
    Int? filter_based_flanking
    Int? filter_based_spacer
  }
  command <<<
    crisprtools filter \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(filter_based_spacers) then ("-s " +  '"' + filter_based_spacers + '"') else ""} \
      ~{if defined(filter_based_direct) then ("-d " +  '"' + filter_based_direct + '"') else ""} \
      ~{if defined(filter_based_flanking) then ("-f " +  '"' + filter_based_flanking + '"') else ""} \
      ~{if defined(filter_based_spacer) then ("-C " +  '"' + filter_based_spacer + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "Output file name, creates a filtered copy of the input file  [default: modify input file inplace]"
    filter_based_spacers: "Filter based on the number of spacers the spacers"
    filter_based_direct: "Filter based on the direct repeats"
    filter_based_flanking: "Filter based on the flanking sequences"
    filter_based_spacer: "Filter based on spacer coverage"
  }
  output {
    File out_stdout = stdout()
  }
}