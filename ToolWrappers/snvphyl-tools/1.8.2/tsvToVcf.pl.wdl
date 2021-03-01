version 1.0

task TsvToVcfpl {
  input {
    File? tsv_file_containing
    Directory? directory_containing_files
    Directory? directory_files_be
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
      ~{if defined(directory_files_be) then ("-d " +  '"' + directory_files_be + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tsv_file_containing: "tsv file containing the snv_alignment"
    directory_containing_files: "directory containing vcf files from freebayes"
    directory_files_be: "directory the new vcf files will be output to"
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
    Directory out_directory_files_be = "${in_directory_files_be}"
  }
}