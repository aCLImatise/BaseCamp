version 1.0

task SvtoolsClassify {
  input {
    String? vcf_input
    String? vcf_output
    File? gender
    File? annotation
    Float? fraction
    File? exclude
    Float? slope_threshold
    Float? r_squared_threshold
    String? t_set
    String? method
    File? diag_file
    String? sex_chrom
    File? tempdir
  }
  command <<<
    svtools classify \
      ~{if defined(vcf_input) then ("--input " +  '"' + vcf_input + '"') else ""} \
      ~{if defined(vcf_output) then ("--output " +  '"' + vcf_output + '"') else ""} \
      ~{if defined(gender) then ("--gender " +  '"' + gender + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(slope_threshold) then ("--slope_threshold " +  '"' + slope_threshold + '"') else ""} \
      ~{if defined(r_squared_threshold) then ("--rsquared_threshold " +  '"' + r_squared_threshold + '"') else ""} \
      ~{if defined(t_set) then ("--tSet " +  '"' + t_set + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(diag_file) then ("--diag_file " +  '"' + diag_file + '"') else ""} \
      ~{if defined(sex_chrom) then ("--sex-chrom " +  '"' + sex_chrom + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_input: "VCF input"
    vcf_output: "VCF output [stdout]"
    gender: "tab delimited file of sample genders (male=1,\\nfemale=2) ex: SAMPLE_A 2"
    annotation: "BED file of annotated elements"
    fraction: "fraction of reciprocal overlap to apply annotation to\\nvariant [0.9]"
    exclude: "list of samples to exclude from classification\\nalgorithms"
    slope_threshold: "minimum slope absolute value of regression line to\\nclassify as DEL or DUP[1.0]"
    r_squared_threshold: "minimum R^2 correlation value of regression line to\\nclassify as DEL or DUP [0.2], for large sample\\nreclassification"
    t_set: "high quality deletions & duplications training\\ndataset[vcf], required by naive Bayes reclassification"
    method: "reclassification method, one of (large_sample,\\nnaive_bayes, hybrid)"
    diag_file: "text file to output method comparisons"
    sex_chrom: "Comma-separated list of sex chromosome names\\n[chrX,chrY]"
    tempdir: "Directory for temp file downloads"
  }
  output {
    File out_stdout = stdout()
    File out_diag_file = "${in_diag_file}"
  }
}