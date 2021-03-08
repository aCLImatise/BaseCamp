version 1.0

task PpanggolinMsa {
  input {
    File? pan_genome
    File? output_directory_be
    Float? soft_core
    String? partition
    String? source
    Boolean? phylo
    Boolean? use_gene_id
    Directory? tmpdir
    String? verbose
    File? log
    Boolean? disable_prog_bar
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin msa \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(output_directory_be) then ("--output " +  '"' + output_directory_be + '"') else ""} \
      ~{if defined(soft_core) then ("--soft_core " +  '"' + soft_core + '"') else ""} \
      ~{if defined(partition) then ("--partition " +  '"' + partition + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if (phylo) then "--phylo" else ""} \
      ~{if (use_gene_id) then "--use_gene_id" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (disable_prog_bar) then "--disable_prog_bar" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0"
  }
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    output_directory_be: "Output directory where the file(s) will be written\\n(default: None)"
    soft_core: "Soft core threshold to use if 'softcore' partition is\\nchosen (default: 0.95)"
    partition: "compute Multiple Sequence Alignement of the gene\\nfamilies in the given partition (default: core)"
    source: "indicates whether to use protein or dna sequences to\\ncompute the msa (default: protein)"
    phylo: "Writes a whole genome msa file for additional\\nphylogenetic analysis (default: False)"
    use_gene_id: "Use gene identifiers rather than organism names for\\nsequences in the family MSA (organism names are used\\nby default) (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    disable_prog_bar: "disables the progress bars (default: False)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_be = "${in_output_directory_be}"
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}