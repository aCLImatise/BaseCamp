version 1.0

task Dxdownloadallinputs {
  input {
    String? except
    Boolean? parallel
    Boolean? sequential
    Int one_slash_b_dot_vcf
    Int one_one_slash_l_dot_vcf
  }
  command <<<
    dx_download_all_inputs \
      ~{one_slash_b_dot_vcf} \
      ~{one_one_slash_l_dot_vcf} \
      ~{if defined(except) then ("--except " +  '"' + except + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (sequential) then "--sequential" else ""}
  >>>
  parameter_meta {
    except: "Do not download the input with this name. (May be used\\nmultiple times.)"
    parallel: "Download the files in parallel"
    sequential: "Download the files sequentially"
    one_slash_b_dot_vcf: "2/C.vcf"
    one_one_slash_l_dot_vcf: "This allows using shell globbing (FOO/*/*.vcf) to get all the files in the"
  }
  output {
    File out_stdout = stdout()
  }
}