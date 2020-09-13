version 1.0

task CtseqPlotMultiple {
  input {
    File? dir
    File? frag_info
    File? name
  }
  command <<<
    ctseq plot_multiple \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(frag_info) then ("--fragInfo " +  '"' + frag_info + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    dir: "Path to directory where you want your plots to be\\ncreated. If no path is given, ctseq will create the\\nplots in your current working directory. Remember to\\ninclude a file ending in '_directories.txt' containing\\nthe paths of the directories containing the data you\\nwant to plot"
    frag_info: "Name of file containing your fragment info file for\\nthese combined plots. If not in same directory as your\\ncurrent working directory, please designate full path\\nto the 'fragInfo' file. See documentation for more info\\n(required)"
    name: "Desired name to be used as the prefix for the file\\nnames of these plots (required)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}