version 1.0

task MbadapterclipperPrime5Adapter {
  input {
    Int? min_len
    String? clip_len
    String mb_adapter_clipper
  }
  command <<<
    mb_adapter_clipper prime5_adapter \
      ~{mb_adapter_clipper} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(clip_len) then ("--clip_len " +  '"' + clip_len + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_len: ""
    clip_len: ""
    mb_adapter_clipper: ""
  }
  output {
    File out_stdout = stdout()
  }
}