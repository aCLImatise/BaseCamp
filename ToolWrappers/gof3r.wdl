version 1.0

task Gof3r {
  input {
    Boolean? man_page
    Boolean? write_ini
    String cp
    String get
    String put
    String rm
  }
  command <<<
    gof3r \
      ~{cp} \
      ~{get} \
      ~{put} \
      ~{rm} \
      ~{if (man_page) then "--manpage" else ""} \
      ~{if (write_ini) then "--writeini" else ""}
  >>>
  parameter_meta {
    man_page: "Create gof3r.man man page in current directory"
    write_ini: "Write .gof3r.ini in current user's home directory"
    cp: "copy S3 objects (aliases: copy)"
    get: "download from S3"
    put: "upload to S3"
    rm: "delete from S3"
  }
  output {
    File out_stdout = stdout()
  }
}