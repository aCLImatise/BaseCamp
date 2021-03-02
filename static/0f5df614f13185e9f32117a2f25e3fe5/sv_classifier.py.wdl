version 1.0

task SvClassifierpy {
  input {
    String? vcf_input
    File? gender
    File? exclude
    File? annotation
    Float? fraction
    Float? slope_threshold
    Float? r_squared_threshold
  }
  command <<<
    sv_classifier_py \
      ~{if defined(vcf_input) then ("--input " +  '"' + vcf_input + '"') else ""} \
      ~{if defined(gender) then ("--gender " +  '"' + gender + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(slope_threshold) then ("--slope_threshold " +  '"' + slope_threshold + '"') else ""} \
      ~{if defined(r_squared_threshold) then ("--rsquared_threshold " +  '"' + r_squared_threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_input: "VCF input [stdin]"
    gender: "tab delimited file of sample genders (male=1, female=2)\\nex: SAMPLE_A    2"
    exclude: "list of samples to exclude from classification algorithms"
    annotation: "BED file of annotated elements"
    fraction: "fraction of reciprocal overlap to apply annotation to variant [0.9]"
    slope_threshold: "minimum slope absolute value of regression line to classify as DEL or DUP[1.0]"
    r_squared_threshold: "minimum R^2 correlation value of regression line to classify as DEL or DUP [0.2]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}