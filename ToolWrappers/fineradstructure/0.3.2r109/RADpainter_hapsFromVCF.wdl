version 1.0

task RADpainterHapsFromVCF {
  input {
    String? het_treatment
    Float? minimum_acceptable_inbreeding
    String input_dot_vcf
  }
  command <<<
    RADpainter hapsFromVCF \
      ~{input_dot_vcf} \
      ~{if defined(het_treatment) then ("--het-treatment " +  '"' + het_treatment + '"') else ""} \
      ~{if defined(minimum_acceptable_inbreeding) then ("-F " +  '"' + minimum_acceptable_inbreeding + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    het_treatment: "r: assign het bases randomly (default); p: use the phase information in the VCF"
    minimum_acceptable_inbreeding: "minimum acceptable inbreeding coefficient (default: F >= -0.3)"
    input_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}