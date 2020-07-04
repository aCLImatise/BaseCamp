version 1.0

task PpanggolinAlign {
  input {
    String? pan_genome
    String? output_directory_written
    String? proteins
    String? annotation
    Boolean? defrag
    String? identity
    String? coverage
    String? translation_table
    Boolean? get_info
    Boolean? draw_related
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
  }
  command <<<
    ppanggolin align \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""} \
      ~{if defined(proteins) then ("--proteins " +  '"' + proteins + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{true="--defrag" false="" defrag} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{true="--getinfo" false="" get_info} \
      ~{true="--draw_related" false="" draw_related} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    output_directory_written: "Output directory where the file(s) will be written (default: None)"
    proteins: "proteins sequences to align on the pangenome gene families (default: None)"
    annotation: "annotation input file (gff or gbff) from which to predict RGPs and partitions (default: None)"
    defrag: "Use the defragmentation strategy to associate potential fragments with their original gene family. (default: False)"
    identity: "min identity percentage threshold (default: 0.5)"
    coverage: "min coverage percentage threshold (default: 0.8)"
    translation_table: "Translation table (genetic code) to use. (default: 11)"
    get_info: "Use this option to extract info related to the best hit of each query, such as the RGP it is in, or the spots. (default: False)"
    draw_related: "Draw figures and provide graphs in a gexf format of the eventual spots associated to the input proteins (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}