version 1.0

task Dxuploadalloutputs {
  input {
    String? except
    Boolean? parallel
    Boolean? sequential
    File? clear_json
    Boolean? wait_on_close
    Boolean? xattr_properties
  }
  command <<<
    dx_upload_all_outputs \
      ~{if defined(except) then ("--except " +  '"' + except + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (sequential) then "--sequential" else ""} \
      ~{if defined(clear_json) then ("--clearJSON " +  '"' + clear_json + '"') else ""} \
      ~{if (wait_on_close) then "--wait-on-close" else ""} \
      ~{if (xattr_properties) then "--xattr-properties" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0"
  }
  parameter_meta {
    except: "Do not upload the input with this name. (May be used\\nmultiple times.)"
    parallel: "Upload the files in parallel"
    sequential: "Upload the files sequentially"
    clear_json: "Clears the output JSON file prior to starting upload."
    wait_on_close: "Wait for files to close, default is not to wait"
    xattr_properties: "Get filesystem attributes and set them as properties on each file uploaded"
  }
  output {
    File out_stdout = stdout()
    File out_clear_json = "${in_clear_json}"
  }
}