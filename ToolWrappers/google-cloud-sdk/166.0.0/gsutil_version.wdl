version 1.0

task GsutilVersion {
  input {
    Boolean? prints_additional_information
  }
  command <<<
    gsutil version \
      ~{if (prints_additional_information) then "-l" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prints_additional_information: "Prints additional information, such as the version of Python\\nbeing used, the version of the Boto library, a checksum of the\\ncode, the path to gsutil, and the path to gsutil's configuration\\nfile.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}