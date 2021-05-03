version 1.0

task Dxmountallinputs {
  input {
    String? except
    Boolean? verbose
  }
  command <<<
    dx_mount_all_inputs \
      ~{if defined(except) then ("--except " +  '"' + except + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0"
  }
  parameter_meta {
    except: "Do not mount the input with this name. (May be used\\nmultiple times.)"
    verbose: "Start dxfuse with '-verbose 2' logging"
  }
  output {
    File out_stdout = stdout()
  }
}