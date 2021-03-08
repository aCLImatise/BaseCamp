version 1.0

task MashTaxscreen {
  input {
    Int? parallelism_many_threads
    File? mapping_file_taxonomy
    Directory? directory_containing_taxonomy
    Int? minimum_identity_report
    Int? maximum_pvalue_report
    String option
  }
  command <<<
    mash taxscreen \
      ~{option} \
      ~{if defined(parallelism_many_threads) then ("-p " +  '"' + parallelism_many_threads + '"') else ""} \
      ~{if defined(mapping_file_taxonomy) then ("-m " +  '"' + mapping_file_taxonomy + '"') else ""} \
      ~{if defined(directory_containing_taxonomy) then ("-t " +  '"' + directory_containing_taxonomy + '"') else ""} \
      ~{if defined(minimum_identity_report) then ("-i " +  '"' + minimum_identity_report + '"') else ""} \
      ~{if defined(maximum_pvalue_report) then ("-v " +  '"' + maximum_pvalue_report + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mash:2.3--ha61e061_0"
  }
  parameter_meta {
    parallelism_many_threads: "Parallelism. This many threads will be spawned for processing. [1]"
    mapping_file_taxonomy: "Mapping file from reference name to taxonomy ID"
    directory_containing_taxonomy: "Directory containing NCBI taxonomy dump [.]"
    minimum_identity_report: "Minimum identity to report. Inclusive unless set to zero, in which\\ncase only identities greater than zero (i.e. with at least one\\nshared hash) will be reported. Set to -1 to output everything.\\n(-1-1) [0]"
    maximum_pvalue_report: "Maximum p-value to report. (0-1) [1.0]"
    option: "Description (range) [default]"
  }
  output {
    File out_stdout = stdout()
  }
}