version 1.0

task DriveAbout {
  input {
    Boolean? features
    Boolean? filesize
    Boolean? quota
  }
  command <<<
    drive about \
      ~{if (features) then "-features" else ""} \
      ~{if (filesize) then "-filesize" else ""} \
      ~{if (quota) then "-quota" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    features: "gives information on features present on this drive"
    filesize: "prints out information about file sizes e.g the max upload size for a specific file size"
    quota: "prints out quota information for this drive\\n"
  }
  output {
    File out_stdout = stdout()
  }
}