version 1.0

task GqtQuery {
  input {
    File? d
    Int? print_number_resulting
    String? genotypes_source_bcfvcf
    String? direcory_name_remote
    File? b
    File? o
    File? var_6
    File? var_7
    Int? p
    Int? var_9
    File? i
  }
  command <<<
    gqt query \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(print_number_resulting) then ("-c " +  '"' + print_number_resulting + '"') else ""} \
      ~{if defined(genotypes_source_bcfvcf) then ("-v " +  '"' + genotypes_source_bcfvcf + '"') else ""} \
      ~{if defined(direcory_name_remote) then ("-t " +  '"' + direcory_name_remote + '"') else ""} \
      ~{if defined(b) then ("-B " +  '"' + b + '"') else ""} \
      ~{if defined(o) then ("-O " +  '"' + o + '"') else ""} \
      ~{if defined(var_6) then ("-V " +  '"' + var_6 + '"') else ""} \
      ~{if defined(var_7) then ("-G " +  '"' + var_7 + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(var_9) then ("-g " +  '"' + var_9 + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d: "\\"
    print_number_resulting: "print number of resulting variants \\"
    genotypes_source_bcfvcf: "genotypes (from the source bcf/vcf)\\"
    direcory_name_remote: "direcory name for remote files (default ./)"
    b: "(opt.)\\"
    o: "(opt.)\\"
    var_6: "(opt.)\\"
    var_7: "(opt.)\\"
    p: "\\"
    var_9: "\\"
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}