version 1.0

task RADpainterHapsFromVCF {
  input {
    Boolean? _rp_r
    Float? minimum_acceptable_inbreeding
    String input_dot_vcf
  }
  command <<<
    RADpainter hapsFromVCF \
      ~{input_dot_vcf} \
      ~{if (_rp_r) then "-H" else ""} \
      ~{if defined(minimum_acceptable_inbreeding) then ("-F " +  '"' + minimum_acceptable_inbreeding + '"') else ""}
  >>>
  parameter_meta {
    _rp_r: ",   --het-treatment <r|p>             r: assign het bases randomly (default); p: use the phase information in the VCF"
    minimum_acceptable_inbreeding: "minimum acceptable inbreeding coefficient (default: F >= -0.3)"
    input_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}