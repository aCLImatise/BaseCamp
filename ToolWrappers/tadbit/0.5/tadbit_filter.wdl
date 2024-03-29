version 1.0

task TadbitFilter {
  input {
    Boolean? force
    Boolean? resume
    File? workdir
    Int? cpus
    Boolean? nox
    File? tmp_db
    Array[Int] path_ids
    Boolean? compress_input
    File? sam_tools
    String? format
    Boolean? valid
    Boolean? clean
    Array[Int] apply
    Int? over_represented
    Int? max_frag_size
    Int? min_frag_size
    Int? re_proximity
  }
  command <<<
    tadbit filter \
      ~{if (force) then "--force" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (nox) then "--noX" else ""} \
      ~{if defined(tmp_db) then ("--tmpdb " +  '"' + tmp_db + '"') else ""} \
      ~{if defined(path_ids) then ("--pathids " +  '"' + path_ids + '"') else ""} \
      ~{if (compress_input) then "--compress_input" else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (valid) then "--valid" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(apply) then ("--apply " +  '"' + apply + '"') else ""} \
      ~{if defined(over_represented) then ("--over_represented " +  '"' + over_represented + '"') else ""} \
      ~{if defined(max_frag_size) then ("--max_frag_size " +  '"' + max_frag_size + '"') else ""} \
      ~{if defined(min_frag_size) then ("--min_frag_size " +  '"' + min_frag_size + '"') else ""} \
      ~{if defined(re_proximity) then ("--re_proximity " +  '"' + re_proximity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "overwrite previously run job"
    resume: "use filters of previously run job"
    workdir: "path to working directory (generated with the tool tadbit mapper)"
    cpus: "[8] Maximum number of CPU cores available in the execution host. If\\nhigher than 1, tasks with multi-threading capabilities will enabled\\n(if 0 all available) cores will be used"
    nox: "no display server (X screen)"
    tmp_db: "if provided uses this directory to manipulate the database"
    path_ids: "Use as input data generated by a job under a given pathids. Use\\ntadbit describe to find out which. To filter an intersected file\\nproduced with tadbit map --fast_fragment only one PATHid is needed\\notherwise one per read is needed, first for read 1, second for read\\n2."
    compress_input: "Compress input mapped files when parsing is done. This is done in\\nbackground, while next MAP file is processed, or while reads are\\nsorted."
    sam_tools: "path samtools binary"
    format: "[mid] for compression into pseudo-BAM format. Short contains only\\npositions of reads mapped, mid everything but restriction sites."
    valid: "stores only valid-pairs discards filtered out reads."
    clean: "remove intermediate files. WARNING: together with format \\\"short\\\" or\\nvalid options, this may results in losing data"
    apply: "[[1, 2, 3, 4, 6, 7, 9, 10]] Use filters to define a set os valid\\npair of reads e.g.: '--apply 1 2 3 4 6 7 8 9'. Where these\\nnumberscorrespond to: 1: self-circle, 2: dangling-end, 3: error, 4:\\nextra dangling-end, 5: too close from RES, 6: too short, 7: too\\nlarge, 8: over-represented, 9: duplicated, 10: random breaks"
    over_represented: "[0.001%] percentage of restriction-enzyme (RE) genomic fragments\\nwith more coverage to exclude (possible PCR artifact)."
    max_frag_size: "[100000] to exclude large genomic RE fragments (probably resulting\\nfrom gaps in the reference genome)"
    min_frag_size: "[50] to exclude small genomic RE fragments (smaller than sequenced\\nreads)"
    re_proximity: "[5] to exclude read-ends falling too close from RE site (pseudo-\\ndangling-ends)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}