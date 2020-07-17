version 1.0

task DxMountAllInputs {
  input {
    String? except
  }
  command <<<
    dx-mount-all-inputs \
      ~{if defined(except) then ("--except " +  '"' + except + '"') else ""}
  >>>
  parameter_meta {
    except: "Do not mount the input with this name. (May be used multiple times.)"
  }
}