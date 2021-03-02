version 1.0

task PpanggolinRgp {
  input {
    Int? persistent_penalty
    Int? variable_gain
    Int? min_score
    Int? min_length
    Float? dup_margin
    File? pan_genome
    Directory? tmpdir
    String? verbose
    File? log
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin rgp \
      ~{if defined(persistent_penalty) then ("--persistent_penalty " +  '"' + persistent_penalty + '"') else ""} \
      ~{if defined(variable_gain) then ("--variable_gain " +  '"' + variable_gain + '"') else ""} \
      ~{if defined(min_score) then ("--min_score " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(dup_margin) then ("--dup_margin " +  '"' + dup_margin + '"') else ""} \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    persistent_penalty: "Penalty score to apply to persistent genes (default:\\n3)"
    variable_gain: "Gain score to apply to variable genes (default: 1)"
    min_score: "Minimal score wanted for considering a region as being\\na RGP (default: 4)"
    min_length: "Minimum length (bp) of a region to be considered a RGP\\n(default: 3000)"
    dup_margin: "Minimum ratio of organisms where the family is present\\nin which the family must have multiple genes for it to\\nbe considered 'duplicated' (default: 0.05)"
    pan_genome: "The pangenome .h5 file (default: None)"
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