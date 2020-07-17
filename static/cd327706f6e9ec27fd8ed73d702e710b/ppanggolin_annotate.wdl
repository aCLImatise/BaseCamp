version 1.0

task PpanggolinAnnotate {
  input {
    String? fast_a
    String? an_no
    String? output_directory_default
    Boolean? overlap
    Boolean? no_rna
    String? kingdom
    String? translation_table
    String? basename
    Boolean? use_pseudo
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
  }
  command <<<
    ppanggolin annotate \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{true="--overlap" false="" overlap} \
      ~{true="--norna" false="" no_rna} \
      ~{if defined(kingdom) then ("--kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{true="--use_pseudo" false="" use_pseudo} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    fast_a: "A tab-separated file listing the organism names, and the fasta filepath of its genomic sequence(s) (the fastas can be compressed with gzip). One line per organism. (default: None)"
    an_no: "A tab-separated file listing the organism names, and the gff/gbff filepath of its annotations (the files can be compressed with gzip). One line per organism. If this is provided, those annotations will be used. (default: None)"
    output_directory_default: "Output directory (default: ppanggolin_output_DATE2020- 06-23_HOUR13.42.56_PID29700)"
    overlap: "Use to not remove genes overlapping with RNA features. (default: True)"
    no_rna: "Use to avoid annotating RNA features. (default: False)"
    kingdom: "Kingdom to which the prokaryota belongs to, to know which models to use for rRNA annotation. (default: bacteria)"
    translation_table: "Translation table (genetic code) to use. (default: 11)"
    basename: "basename for the output file (default: pangenome)"
    use_pseudo: "In the context of provided annotation, use this option to use pseudogenes. (Default behavior is to ignore them) (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}