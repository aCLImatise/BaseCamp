version 1.0

task SecaprQualityCheck {
  input {
    Directory? directory_containing_files
    Directory? output_directory_besaved
  }
  command <<<
    secapr quality_check \
      ~{if defined(directory_containing_files) then ("--input " +  '"' + directory_containing_files + '"') else ""} \
      ~{if defined(output_directory_besaved) then ("--output " +  '"' + output_directory_besaved + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0"
  }
  parameter_meta {
    directory_containing_files: "The directory containing fastq files"
    output_directory_besaved: "The output directory where quality-test results will be\\nsaved\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_besaved = "${in_output_directory_besaved}"
  }
}