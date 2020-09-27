version 1.0

task GetMaskedRepresentativespy {
  input {
    String? representatives
  }
  command <<<
    get_masked_representatives_py \
      ~{if defined(representatives) then ("--representatives " +  '"' + representatives + '"') else ""}
  >>>
  parameter_meta {
    representatives: ""
  }
  output {
    File out_stdout = stdout()
  }
}