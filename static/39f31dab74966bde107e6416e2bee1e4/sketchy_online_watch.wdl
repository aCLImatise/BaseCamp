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
      ~{true="--now" false="" now}
  >>>
  parameter_meta {
    directory: "Path to directory to watch [required]  [required]"
    regex: "Regex to identify read files [.*\.fastq$]"
    now: "Disable waiting for file completion."
  }
}