version 1.0

task DxDownloadAllInputs {
  input {
    String? except
    Boolean? parallel
    Boolean? sequential
  }
  command <<<
    dx-download-all-inputs \
      ~{if defined(except) then ("--except " +  '"' + except + '"') else ""} \
      ~{true="--parallel" false="" parallel} \
      ~{true="--sequential" false="" sequential}
  >>>
  parameter_meta {
    except: "Do not download the input with this name. (May be used multiple times.)"
    parallel: "Download the files in parallel"
    sequential: "Download the files sequentially"
  }
}