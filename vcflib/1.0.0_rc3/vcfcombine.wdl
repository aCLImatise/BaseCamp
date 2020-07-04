version 1.0

task Vcfcombine {
  input {
    String? region
    String? var_1
    File? var_2
    String? var_3
    File? var_4
  }
  command <<<
    vcfcombine \
      ~{var_1} \
      ~{var_2} \
      ~{var_3} \
      ~{var_4} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""}
  >>>
  parameter_meta {
    region: "A region specifier of the form chrN:x-y to bound the merge"
    var_1: ""
    var_2: ""
    var_3: ""
    var_4: ""
  }
}