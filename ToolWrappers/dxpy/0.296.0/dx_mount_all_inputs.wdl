version 1.0

task Dxmountallinputs {
  input {
    String? except
  }
  command <<<
    dx_mount_all_inputs \
      ~{if defined(except) then ("--except " +  '"' + except + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    except: "Do not mount the input with this name. (May be used\\nmultiple times.)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}