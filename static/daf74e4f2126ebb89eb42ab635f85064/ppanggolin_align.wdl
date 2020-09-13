version 1.0

task PpanggolinAlign {
  input {
    String? p
    File? pan_genome
    File? output_directory_where
    String? proteins
    File? annotation
    Boolean? defrag
    Int? identity
    Int? coverage
    Int? translation_table
    Boolean? get_info
    Boolean? draw_related
    Directory? tmpdir
    String? verbose
    File? log
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin align \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(output_directory_where) then ("--output " +  '"' + output_directory_where + '"') else ""} \
      ~{if defined(proteins) then ("--proteins " +  '"' + proteins + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if (defrag) then "--defrag" else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if (get_info) then "--getinfo" else ""} \
      ~{if (draw_related) then "--draw_related" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    p: "[--defrag]"
    pan_genome: "The pangenome .h5 file (default: None)"
    output_directory_where: "Output directory where the file(s) will be written\\n(default: None)"
    proteins: "proteins sequences to align on the pangenome gene\\nfamilies (default: None)"
    annotation: "annotation input file (gff or gbff) from which to\\npredict RGPs and partitions (default: None)"
    defrag: "Use the defragmentation strategy to associate\\npotential fragments with their original gene family.\\n(default: False)"
    identity: "min identity percentage threshold (default: 0.5)"
    coverage: "min coverage percentage threshold (default: 0.8)"
    translation_table: "Translation table (genetic code) to use. (default: 11)"
    get_info: "Use this option to extract info related to the best\\nhit of each query, such as the RGP it is in, or the\\nspots. (default: False)"
    draw_related: "Draw figures and provide graphs in a gexf format of\\nthe eventual spots associated to the input proteins\\n(default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_where = "${in_output_directory_where}"
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}