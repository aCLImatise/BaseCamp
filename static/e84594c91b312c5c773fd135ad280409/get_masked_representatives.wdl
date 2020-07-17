version 1.0

task GetMaskedRepresentatives.py {
  input {
    String? representatives
  }
  command <<<
    get_masked_representatives.py \
      ~{if defined(representatives) then ("--representatives " +  '"' + representatives + '"') else ""}
  >>>
  parameter_meta {
    representatives: ""
  }
}