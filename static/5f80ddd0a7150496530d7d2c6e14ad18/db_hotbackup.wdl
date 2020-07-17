version 1.0

task DbHotbackup {
  input {
    Boolean? cd_uvv
  }
  command <<<
    db_hotbackup \
      ~{true="-cDuVv" false="" cd_uvv}
  >>>
  parameter_meta {
    cd_uvv: ""
  }
}