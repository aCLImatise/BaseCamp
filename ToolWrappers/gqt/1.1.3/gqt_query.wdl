version 1.0

task GqtQuery {
  input {
    Int? print_number_resulting
    String? genotypes_source_bcfvcf
    String? direcory_name_remote
    File? b
    File? o
    File? var_5
    File? g
    File? i
  }
  command <<<
    gqt query \
      ~{if defined(print_number_resulting) then ("-c " +  '"' + print_number_resulting + '"') else ""} \
      ~{if defined(genotypes_source_bcfvcf) then ("-v " +  '"' + genotypes_source_bcfvcf + '"') else ""} \
      ~{if defined(direcory_name_remote) then ("-t " +  '"' + direcory_name_remote + '"') else ""} \
      ~{if defined(b) then ("-B " +  '"' + b + '"') else ""} \
      ~{if defined(o) then ("-O " +  '"' + o + '"') else ""} \
      ~{if defined(var_5) then ("-V " +  '"' + var_5 + '"') else ""} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    print_number_resulting: "print number of resulting variants \\"
    genotypes_source_bcfvcf: "genotypes (from the source bcf/vcf)\\"
    direcory_name_remote: "direcory name for remote files (default ./)"
    b: "(opt.)\\"
    o: "(opt.)\\"
    var_5: "(opt.)\\"
    g: "(opt.)\\"
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}