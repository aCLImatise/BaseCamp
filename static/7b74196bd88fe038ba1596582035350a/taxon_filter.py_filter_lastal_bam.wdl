version 1.0

task TaxonFilterpyFilterLastalBam {
  input {
    Int? maximum_gapless_alignments
    Int? minimum_length_initial
    Int? maximum_length_initial
    Int? maximum_initial_matches
    Int? jvm_memory
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    String in_bam
    String db
    String out_bam
  }
  command <<<
    taxon_filter_py filter_lastal_bam \
      ~{in_bam} \
      ~{db} \
      ~{out_bam} \
      ~{if defined(maximum_gapless_alignments) then ("-n " +  '"' + maximum_gapless_alignments + '"') else ""} \
      ~{if defined(minimum_length_initial) then ("-l " +  '"' + minimum_length_initial + '"') else ""} \
      ~{if defined(maximum_length_initial) then ("-L " +  '"' + maximum_length_initial + '"') else ""} \
      ~{if defined(maximum_initial_matches) then ("-m " +  '"' + maximum_initial_matches + '"') else ""} \
      ~{if defined(jvm_memory) then ("--JVMmemory " +  '"' + jvm_memory + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    maximum_gapless_alignments: "maximum gapless alignments per query position\\n(default: 1)"
    minimum_length_initial: "minimum length for initial matches (default: 5)"
    maximum_length_initial: "maximum length for initial matches (default: 50)"
    maximum_initial_matches: "maximum initial matches per query position (default:\\n100)"
    jvm_memory: "JVM virtual memory size (default: 4g)"
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_bam: "Input reads"
    db: "Database of taxa we keep"
    out_bam: "Output reads, filtered to refDb"
  }
  output {
    File out_stdout = stdout()
  }
}