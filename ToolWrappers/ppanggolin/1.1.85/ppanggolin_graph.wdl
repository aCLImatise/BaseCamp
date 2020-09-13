version 1.0

task PpanggolinGraph {
  input {
    File? pan_genome
    Int? remove_high_copy_number
    Directory? tmpdir
    String? verbose
    File? log
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin graph \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(remove_high_copy_number) then ("--remove_high_copy_number " +  '"' + remove_high_copy_number + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    remove_high_copy_number: "Positive Number: Remove families having a number of\\ncopy of gene in a single organism above or equal to\\nthis threshold in at least one organism (0 or negative\\nvalues are ignored). (default: 0)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}