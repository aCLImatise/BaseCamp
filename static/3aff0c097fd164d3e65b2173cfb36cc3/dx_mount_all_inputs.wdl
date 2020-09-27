version 1.0

task Dxmountallinputs {
  input {
    String? except
    Int one_one_slash_l_dot_vcf
  }
  command <<<
    dx_mount_all_inputs \
      ~{one_one_slash_l_dot_vcf} \
      ~{if defined(except) then ("--except " +  '"' + except + '"') else ""}
  >>>
  parameter_meta {
    except: "Do not mount the input with this name. (May be used\\nmultiple times.)\\n"
    one_one_slash_l_dot_vcf: "This allows using shell globbing (FOO/*/*.vcf) to get all the files in the"
  }
  output {
    File out_stdout = stdout()
  }
}