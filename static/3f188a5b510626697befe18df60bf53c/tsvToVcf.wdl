version 1.0

task TsvToVcf.pl {
  input {
    String? directory_containing_files
    String? directory_new_vcf
    String? t
  }
  command <<<
    tsvToVcf.pl \
      ~{if defined(directory_containing_files) then ("-v " +  '"' + directory_containing_files + '"') else ""} \
      ~{if defined(directory_new_vcf) then ("-d " +  '"' + directory_new_vcf + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    directory_containing_files: "directory containing vcf files from freebayes"
    directory_new_vcf: "directory the new vcf files will be output to"
    t: ""
  }
}