version 1.0

task Dxdownloadallinputs {
  input {
    String? except
    Boolean? parallel
    Boolean? sequential
  }
  command <<<
    dx_download_all_inputs \
      ~{if defined(except) then ("--except " +  '"' + except + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (sequential) then "--sequential" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    except: "Do not download the input with this name. (May be used\\nmultiple times.)"
    parallel: "Download the files in parallel"
    sequential: "Download the files sequentially"
  }
  output {
    File out_stdout = stdout()
  }
}