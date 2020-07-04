version 1.0

task VsnpFileManagement.py {
  input {
    String? codes
    String? extension
    Boolean? v
    String prog
  }
  command <<<
    vsnp_file_management.py \
      ~{prog} \
      ~{if defined(codes) then ("--codes " +  '"' + codes + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    codes: "Excel file containing genotype code Column 1: to match sample name minus everything left of first occurring _ or . Column 2: New name"
    extension: "File extension type to be renamed"
    v: ""
    prog: ""
  }
}