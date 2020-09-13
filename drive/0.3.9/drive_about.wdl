version 1.0

task DriveAbout {
  input {
    Boolean? features
    Boolean? filesize
    Boolean? quiet
    Boolean? quota
  }
  command <<<
    drive about \
      ~{if (features) then "-features" else ""} \
      ~{if (filesize) then "-filesize" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (quota) then "-quota" else ""}
  >>>
  parameter_meta {
    features: "gives information on features present on this drive"
    filesize: "prints out information about file sizes e.g the max upload size for a specific file size"
    quiet: "if set, do not log anything but errors"
    quota: "prints out quota information for this drive\\n"
  }
  output {
    File out_stdout = stdout()
  }
}