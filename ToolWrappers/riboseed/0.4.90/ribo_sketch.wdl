version 1.0

task RiboSketch {
  input {
    Directory? outdir
    String? assembly_ext
    String? ref_ext
    String? names
    Boolean? replot
    File? mauve_jar
    File? verbosity
  }
  command <<<
    ribo sketch \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(assembly_ext) then ("--assembly_ext " +  '"' + assembly_ext + '"') else ""} \
      ~{if defined(ref_ext) then ("--ref_ext " +  '"' + ref_ext + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if (replot) then "--replot" else ""} \
      ~{if defined(mauve_jar) then ("--mauve_jar " +  '"' + mauve_jar + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "output directory; default: None"
    assembly_ext: "extension of assemblies, usually fasta"
    ref_ext: "extension of reference, usually gb"
    names: "name the resulting plot and output dirs; comma-\\nseparate"
    replot: "replot, using a previous run of analyses"
    mauve_jar: "path to Mauve.jar; default:\\n~/mauve_snapshot_2015-02-13/Mauve.jar"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_verbosity = "${in_verbosity}"
  }
}