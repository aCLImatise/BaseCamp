version 1.0

task PhyluceUtilitiesReplaceManyLinks {
  input {
    Directory? in_dir
    String? oldpath
    String? newpath
    Directory? output_directory_hold
    String program_description
  }
  command <<<
    phyluce_utilities_replace_many_links \
      ~{program_description} \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(oldpath) then ("--oldpath " +  '"' + oldpath + '"') else ""} \
      ~{if defined(newpath) then ("--newpath " +  '"' + newpath + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--outdir " +  '"' + output_directory_hold + '"') else ""}
  >>>
  parameter_meta {
    in_dir: "The directory containing the links to rename"
    oldpath: "The text you want to replace in the oldpath (include '/')"
    newpath: "The text you want to use as a replacement in the newpath\\n(include '/')"
    output_directory_hold: "The output directory to hold updated symlinks"
    program_description: "Program description"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_hold = "${in_output_directory_hold}"
  }
}