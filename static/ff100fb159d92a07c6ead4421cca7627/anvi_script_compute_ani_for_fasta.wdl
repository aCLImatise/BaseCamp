version 1.0

task AnviScriptComputeAniForFasta {
  input {
    String? fast_a_file
    String? output_dir
    String? pan_db
    String? num_threads
    File? log_file
    String? method
    String? distance
    String? linkage
    Boolean? just_do_it
  }
  command <<<
    anvi-script-compute-ani-for-fasta \
      ~{if defined(fast_a_file) then ("--fasta-file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""} \
      ~{true="--just-do-it" false="" just_do_it}
  >>>
  parameter_meta {
    fast_a_file: "A FASTA-formatted input file"
    output_dir: "Directory path for output files"
    pan_db: "Anvi'o pan database"
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
    log_file: "File path to store debug/output messages."
    method: "Method for pyANI. The default is ANIb. You must have the necessary binary in path for whichever method you choose. According to the pyANI help for v0.2.7 at https://github.com/widdowquinn/pyani, the method 'ANIm' uses MUMmer (NUCmer) to align the input sequences. 'ANIb' uses BLASTN+ to align 1020nt fragments of the input sequences. 'ANIblastall': uses the legacy BLASTN to align 1020nt fragments Finally, 'TETRA': calculates tetranucleotide frequencies of each input sequence"
    distance: "The distance metric for the hierarchical clustering. The default is \"euclidean\"."
    linkage: "The linkage method for the hierarchical clustering. The default is \"ward\"."
    just_do_it: "Don't bother me with questions or warnings, just do it."
  }
}