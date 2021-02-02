version 1.0

task TsvToVcfpl {
  input {
    File? tsv_file_containing
    Directory? directory_containing_files
    Directory? directory_new_files
    String destination
    Directory directory
    String containing
    String the
    String new
    String vcf
    String files
    String from
    String will
    String be
    String var_output
  }
  command <<<
    tsvToVcf_pl \
      ~{destination} \
      ~{directory} \
      ~{containing} \
      ~{the} \
      ~{new} \
      ~{vcf} \
      ~{files} \
      ~{from} \
      ~{will} \
      ~{be} \
      ~{var_output} \
      ~{if defined(tsv_file_containing) then ("-t " +  '"' + tsv_file_containing + '"') else ""} \
      ~{if defined(directory_containing_files) then ("-v " +  '"' + directory_containing_files + '"') else ""} \
      ~{if defined(directory_new_files) then ("-d " +  '"' + directory_new_files + '"') else ""}
  >>>
  parameter_meta {
    tsv_file_containing: "tsv file containing the snv_alignment"
    directory_containing_files: "directory containing vcf files from freebayes"
    directory_new_files: "directory the new vcf files will be output to"
    destination: ""
    directory: ""
    containing: ""
    the: ""
    new: ""
    vcf: ""
    files: ""
    from: ""
    will: ""
    be: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_new_files = "${in_directory_new_files}"
  }
}