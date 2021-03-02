version 1.0

task SketchySurveyLink {
  input {
    File? iid
    File? directory
    String? column
    File? extension
    Directory? symlink
    Directory? outdir
  }
  command <<<
    sketchy survey link \
      ~{if defined(iid) then ("--iid " +  '"' + iid + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if (symlink) then "--symlink" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    iid: "Path to isolate ID file from Pathfinder Survey"
    directory: "Path to directory from which to extract files"
    column: "Use a header and column name to parse isolate IDs\\n[None]"
    extension: "File extension to link isolate IDs to file [.fasta]"
    symlink: "Symlink the detected files to the output directory."
    outdir: "If symlink, output directory for symbolic links to\\nfiles [sketchy_link]"
  }
  output {
    File out_stdout = stdout()
    Directory out_symlink = "${in_symlink}"
    Directory out_outdir = "${in_outdir}"
  }
}