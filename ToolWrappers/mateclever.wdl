version 1.0

task Mateclever {
  input {
    String? threads
    Int? maximum_deletion_length
    Boolean? delete_old_result
    Directory? working_directory_default
    Boolean? keep_directory_whenfinished
    Float? minimum_expected_support
    Int? maximum_center_distance
    Int? maximum_length_difference
  }
  command <<<
    mateclever \
      ~{if defined(threads) then ("-T " +  '"' + threads + '"') else ""} \
      ~{if defined(maximum_deletion_length) then ("-M " +  '"' + maximum_deletion_length + '"') else ""} \
      ~{if (delete_old_result) then "-f" else ""} \
      ~{if defined(working_directory_default) then ("-w " +  '"' + working_directory_default + '"') else ""} \
      ~{if (keep_directory_whenfinished) then "-k" else ""} \
      ~{if defined(minimum_expected_support) then ("-W " +  '"' + minimum_expected_support + '"') else ""} \
      ~{if defined(maximum_center_distance) then ("-o " +  '"' + maximum_center_distance + '"') else ""} \
      ~{if defined(maximum_length_difference) then ("-z " +  '"' + maximum_length_difference + '"') else ""}
  >>>
  parameter_meta {
    threads: "Threads."
    maximum_deletion_length: "Maximum deletion length to look for (default: 10000)."
    delete_old_result: "Delete old result and working directory first (if\\npresent)."
    working_directory_default: "Working directory (default: <result-directory>/work)."
    keep_directory_whenfinished: "Keep working directory (default: delete directory when\\nfinished)."
    minimum_expected_support: "Minimum expected support for a SNP in order to ignore\\nmismatches at that position (default: 3.0)."
    maximum_center_distance: "Maximum center distance between split-read and read-\\npair deletion to be considered identical (default:\\n100)."
    maximum_length_difference: "Maximum length difference between split-read and read-\\npair deletion to be considered identical (default:\\n20).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}