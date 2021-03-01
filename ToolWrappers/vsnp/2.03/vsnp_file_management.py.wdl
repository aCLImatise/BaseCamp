version 1.0

task VsnpFileManagementpy {
  input {
    File? codes
    File? extension
    Boolean? v
    String prog
  }
  command <<<
    vsnp_file_management_py \
      ~{prog} \
      ~{if defined(codes) then ("--codes " +  '"' + codes + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    codes: "Excel file containing genotype code Column 1: to match\\nsample name minus everything left of first occurring _\\nor . Column 2: New name"
    extension: "File extension type to be renamed"
    v: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}