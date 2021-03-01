version 1.0

task Anviscriptcomputeaniforfasta {
  input {
    File? fast_a_file
    File? output_dir
    String? pan_db
    Int? num_threads
    File? log_file
    String? method
    String? distance
    String? linkage
    Boolean? just_do_it
  }
  command <<<
    anvi_script_compute_ani_for_fasta \
      ~{if defined(fast_a_file) then ("--fasta-file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_file: "A FASTA-formatted input file"
    output_dir: "Directory path for output files"
    pan_db: "Anvi'o pan database"
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast."
    log_file: "File path to store debug/output messages."
    method: "Method for pyANI. The default is ANIb. You must have\\nthe necessary binary in path for whichever method you\\nchoose. According to the pyANI help for v0.2.7 at\\nhttps://github.com/widdowquinn/pyani, the method\\n'ANIm' uses MUMmer (NUCmer) to align the input\\nsequences. 'ANIb' uses BLASTN+ to align 1020nt\\nfragments of the input sequences. 'ANIblastall': uses\\nthe legacy BLASTN to align 1020nt fragments Finally,\\n'TETRA': calculates tetranucleotide frequencies of\\neach input sequence"
    distance: "The distance metric for the hierarchical clustering.\\nThe default is \\\"euclidean\\\"."
    linkage: "The linkage method for the hierarchical clustering.\\nThe default is \\\"ward\\\"."
    just_do_it: "Don't bother me with questions or warnings, just do\\nit.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
    File out_log_file = "${in_log_file}"
  }
}