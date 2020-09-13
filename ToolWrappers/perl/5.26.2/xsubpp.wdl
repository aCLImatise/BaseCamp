version 1.0

task Xsubpp {
  input {
    Boolean? no_arg_types
    Boolean? no_inout
    Boolean? no_optimize
    Boolean? no_line_numbers
    Boolean? no_version_check
    Boolean? prototypes
    Boolean? except
    String? c_suffix
    Boolean? v
  }
  command <<<
    xsubpp \
      ~{if (no_arg_types) then "-noargtypes" else ""} \
      ~{if (no_inout) then "-noinout" else ""} \
      ~{if (no_optimize) then "-nooptimize" else ""} \
      ~{if (no_line_numbers) then "-nolinenumbers" else ""} \
      ~{if (no_version_check) then "-noversioncheck" else ""} \
      ~{if (prototypes) then "-prototypes" else ""} \
      ~{if (except) then "-except" else ""} \
      ~{if defined(c_suffix) then ("-csuffix " +  '"' + c_suffix + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    no_arg_types: ""
    no_inout: ""
    no_optimize: ""
    no_line_numbers: ""
    no_version_check: ""
    prototypes: ""
    except: ""
    c_suffix: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}