version 1.0

task PhyluceUtilitiesReplaceManyLinks {
  input {
    String? in_dir
    String? oldpath
    String? newpath
    String? outdir
  }
  command <<<
    phyluce_utilities_replace_many_links \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(oldpath) then ("--oldpath " +  '"' + oldpath + '"') else ""} \
      ~{if defined(newpath) then ("--newpath " +  '"' + newpath + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    in_dir: "The directory containing the links to rename"
    oldpath: "The text you want to replace in the oldpath (include '/')"
    newpath: "The text you want to use as a replacement in the newpath (include '/')"
    outdir: "The output directory to hold updated symlinks"
  }
}