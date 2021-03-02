version 1.0

task HicstuffDigest {
  input {
    Boolean? circular
    Int? enzyme
    File? force
    Int? size
    Directory? outdir
    Boolean? plot
    File? fig_dir
    String fast_a
  }
  command <<<
    hicstuff digest \
      ~{fast_a} \
      ~{if (circular) then "--circular" else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if defined(fig_dir) then ("--figdir " +  '"' + fig_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    circular: "Specify if the genome is circular."
    enzyme: "[,ENZ2,...]     A restriction enzyme or an integer\\nrepresenting fixed chunk sizes (in bp).\\nMultiple comma-separated enzymes can\\nbe given."
    force: "Write even if the output file already exists."
    size: "Minimum size threshold to keep\\nfragments. [default: 0]"
    outdir: "Directory where the fragments and\\ncontigs files will be written.\\nDefaults to current directory."
    plot: "Show a histogram of fragment length\\ndistribution after digestion."
    fig_dir: "Path to directory of the output figure.\\nBy default, the figure is only shown\\nbut not saved."
    fast_a: "Fasta file to be digested"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
    File out_fig_dir = "${in_fig_dir}"
  }
}