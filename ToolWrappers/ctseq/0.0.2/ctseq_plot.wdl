version 1.0

task CtseqPlot {
  input {
    File? dir
    File? frag_info
  }
  command <<<
    ctseq plot \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(frag_info) then ("--fragInfo " +  '"' + frag_info + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "Path to directory where you have your plot input files.\\nIf no '--dir' is specified, ctseq will look in your\\ncurrent directory."
    frag_info: "Name of file containing your fragment info file for\\nthis sequencing run. If not in same directory as your\\nplot input files, please designate full path to the\\n'fragInfo' file. See documentation for more info\\n(required)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}