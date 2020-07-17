version 1.0

task CdHitPara.pl {
  input {
    String? queuing_system_supported
    String? file_used_crash
    String? this_help
  }
  command <<<
    cd-hit-para.pl \
      ~{if defined(queuing_system_supported) then ("--T " +  '"' + queuing_system_supported + '"') else ""} \
      ~{if defined(file_used_crash) then ("--R " +  '"' + file_used_crash + '"') else ""} \
      ~{if defined(this_help) then ("-h " +  '"' + this_help + '"') else ""}
  >>>
  parameter_meta {
    queuing_system_supported: "of queuing system, \"PBS\", \"SGE\" are supported, default PBS"
    file_used_crash: "file, used after a crash of run"
    this_help: "this help"
  }
}