version 1.0

task PpanggolinRgp {
  input {
    String? persistent_penalty
    String? variable_gain
    Int? min_score
    Int? min_length
    String? dup_margin
    String? pan_genome
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
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
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    persistent_penalty: "Penalty score to apply to persistent genes (default: 3)"
    variable_gain: "Gain score to apply to variable genes (default: 1)"
    min_score: "Minimal score wanted for considering a region as being a RGP (default: 4)"
    min_length: "Minimum length (bp) of a region to be considered a RGP (default: 3000)"
    dup_margin: "Minimum ratio of organisms where the family is present in which the family must have multiple genes for it to be considered 'duplicated' (default: 0.05)"
    pan_genome: "The pangenome .h5 file (default: None)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}