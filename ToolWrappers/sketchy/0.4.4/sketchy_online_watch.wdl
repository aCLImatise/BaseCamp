version 1.0

task SketchyOnlineWatch {
  input {
    File? directory
    String? regex
    Boolean? now
  }
  command <<<
    sketchy online watch \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if (now) then "--now" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory: "Path to directory to watch [required]  [required]"
    regex: "Regex to identify read files [.*\\.fastq$]"
    now: "Disable waiting for file completion."
  }
  output {
    File out_stdout = stdout()
  }
}