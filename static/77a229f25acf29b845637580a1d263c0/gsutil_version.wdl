version 1.0

task GsutilVersion {
  input {
    Boolean? prints_additional_information
  }
  command <<<
    gsutil version \
      ~{true="-l" false="" prints_additional_information}
  >>>
  parameter_meta {
    prints_additional_information: "Prints additional information, such as the version of Python being used, the version of the Boto library, a checksum of the code, the path to gsutil, and the path to gsutil's configuration file."
  }
}