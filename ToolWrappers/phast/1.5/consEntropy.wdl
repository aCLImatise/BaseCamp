version 1.0

task ConsEntropy {
  input {
    String? instead_computing_entropy
    Int? l_minh
    String target_coverage
    Int expected_length
  }
  command <<<
    consEntropy \
      ~{target_coverage} \
      ~{expected_length} \
      ~{if defined(instead_computing_entropy) then ("--H " +  '"' + instead_computing_entropy + '"') else ""} \
      ~{if defined(l_minh) then ("--LminH " +  '"' + l_minh + '"') else ""}
  >>>
  parameter_meta {
    instead_computing_entropy: "Instead of computing the relative entropy from two .mod files,\\njust use the specified value.  The .mod files aren't required\\nin this case."
    l_minh: "[or --NH/-N, for backward compatibility]\\nReport the expected length that would produce the specified value\\nof L_min * H (i.e., the specified PIT), assuming H remains constant\\n(it generally won't).  Can be used iteratively to converge on a\\ndesired PIT."
    target_coverage: ""
    expected_length: ""
  }
  output {
    File out_stdout = stdout()
  }
}