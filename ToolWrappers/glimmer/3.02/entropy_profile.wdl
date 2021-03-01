version 1.0

task Entropyprofile {
  input {
    Boolean? brief
    String? min_len
  }
  command <<<
    entropy_profile \
      ~{if (brief) then "--brief" else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    brief: "Brief output:  3 columns with header line"
    min_len: "Don't output any sequence shorter than <n> characters\\n"
  }
  output {
    File out_stdout = stdout()
  }
}