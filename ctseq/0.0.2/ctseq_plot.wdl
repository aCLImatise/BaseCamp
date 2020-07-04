version 1.0

task CtseqPlot {
  input {
    String? dir
    String? frag_info
  }
  command <<<
    ctseq plot \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(frag_info) then ("--fragInfo " +  '"' + frag_info + '"') else ""}
  >>>
  parameter_meta {
    dir: "Path to directory where you have your plot input files. If no '--dir' is specified, ctseq will look in your current directory."
    frag_info: "Name of file containing your fragment info file for this sequencing run. If not in same directory as your plot input files, please designate full path to the 'fragInfo' file. See documentation for more info (required)"
  }
}