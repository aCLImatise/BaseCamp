version 1.0

task HgBbiDbLink {
  input {
    String database
    String track_name
    File filename
  }
  command <<<
    hgBbiDbLink \
      ~{database} \
      ~{track_name} \
      ~{filename}
  >>>
  parameter_meta {
    database: ""
    track_name: ""
    filename: ""
  }
}