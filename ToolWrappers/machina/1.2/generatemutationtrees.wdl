version 1.0

task Generatemutationtrees {
  input {
    Boolean? output_canonical_clone
    Int? maximum_number_enumerate
    Directory? output_directory
    Int? number_threads_default
    Int? tl
    String frequencies
  }
  command <<<
    generatemutationtrees \
      ~{frequencies} \
      ~{if (output_canonical_clone) then "-C" else ""} \
      ~{if defined(maximum_number_enumerate) then ("-l " +  '"' + maximum_number_enumerate + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(tl) then ("-tl " +  '"' + tl + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/machina:1.2--h176a8bc_1"
  }
  parameter_meta {
    output_canonical_clone: "Output canonical clone trees"
    maximum_number_enumerate: "Maximum number of mutation trees to enumerate (default: -1, unlimited)"
    output_directory: "Output directory"
    number_threads_default: "Number of threads (default: 1)"
    tl: "Time limit in seconds (default: -1, unlimited)\\n"
    frequencies: "Frequencies"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}