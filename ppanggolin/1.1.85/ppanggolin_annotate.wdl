version 1.0

task PpanggolinAnnotate {
  input {
    File? fast_a
    File? an_no
    Directory? output_directory_defaultppanggolinoutputdatehourpid
    Boolean? overlap
    Boolean? no_rna
    String? kingdom
    Int? translation_table
    File? basename
    Boolean? use_pseudo
    Directory? tmpdir
    String? verbose
    File? log
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin annotate \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(output_directory_defaultppanggolinoutputdatehourpid) then ("--output " +  '"' + output_directory_defaultppanggolinoutputdatehourpid + '"') else ""} \
      ~{if (overlap) then "--overlap" else ""} \
      ~{if (no_rna) then "--norna" else ""} \
      ~{if defined(kingdom) then ("--kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if (use_pseudo) then "--use_pseudo" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    fast_a: "A tab-separated file listing the organism names, and\\nthe fasta filepath of its genomic sequence(s) (the\\nfastas can be compressed with gzip). One line per\\norganism. (default: None)"
    an_no: "A tab-separated file listing the organism names, and\\nthe gff/gbff filepath of its annotations (the files\\ncan be compressed with gzip). One line per organism.\\nIf this is provided, those annotations will be used.\\n(default: None)"
    output_directory_defaultppanggolinoutputdatehourpid: "Output directory (default:\\nppanggolin_output_DATE2020-09-09_HOUR23.40.37_PID1250)"
    overlap: "Use to not remove genes overlapping with RNA features.\\n(default: True)"
    no_rna: "Use to avoid annotating RNA features. (default: False)"
    kingdom: "Kingdom to which the prokaryota belongs to, to know\\nwhich models to use for rRNA annotation. (default:\\nbacteria)"
    translation_table: "Translation table (genetic code) to use. (default: 11)"
    basename: "basename for the output file (default: pangenome)"
    use_pseudo: "In the context of provided annotation, use this option\\nto use pseudogenes. (Default behavior is to ignore\\nthem) (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_defaultppanggolinoutputdatehourpid = "${in_output_directory_defaultppanggolinoutputdatehourpid}"
    File out_basename = "${in_basename}"
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}