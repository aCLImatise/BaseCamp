version 1.0

task RiboSketch {
  input {
    String? outdir
    String? assembly_ext
    String? ref_ext
    String? names
    Boolean? replot
    String? mauve_jar
    String? verbosity
    String in_dir
  }
  command <<<
    ribo sketch \
      ~{in_dir} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(assembly_ext) then ("--assembly_ext " +  '"' + assembly_ext + '"') else ""} \
      ~{if defined(ref_ext) then ("--ref_ext " +  '"' + ref_ext + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{true="--replot" false="" replot} \
      ~{if defined(mauve_jar) then ("--mauve_jar " +  '"' + mauve_jar + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    outdir: "output directory; default: None"
    assembly_ext: "extension of assemblies, usually fasta"
    ref_ext: "extension of reference, usually gb"
    names: "name the resulting plot and output dirs; comma- separate"
    replot: "replot, using a previous run of analyses"
    mauve_jar: "path to Mauve.jar; default: ~/mauve_snapshot_2015-02-13/Mauve.jar"
    verbosity: "Logger writes debug to file in output dir; this sets verbosity level sent to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    in_dir: "dir containing a genbank file, assembly filesas fastas. Usually the 'mauve' dir in the riboSeed results"
  }
}