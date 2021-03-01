version 1.0

task TaxonFilterpyPartitionBmtagger {
  input {
    String? out_match
    String? out_no_match
    String? loglevel
    Directory? tmp_dir
    Boolean? tmp_dir_keep
    Int in_fast_q_one
    Int in_fast_q_two
    String ref_dbs
  }
  command <<<
    taxon_filter_py partition_bmtagger \
      ~{in_fast_q_one} \
      ~{in_fast_q_two} \
      ~{ref_dbs} \
      ~{if defined(out_match) then ("--outMatch " +  '"' + out_match + '"') else ""} \
      ~{if defined(out_no_match) then ("--outNoMatch " +  '"' + out_no_match + '"') else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (tmp_dir_keep) then "--tmp_dirKeep" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_match: "OUTMATCH\\nFilenames for fastq output of matching reads."
    out_no_match: "OUTNOMATCH\\nFilenames for fastq output of unmatched reads."
    loglevel: "Verboseness of output. [default: DEBUG]"
    tmp_dir: "Base directory for temp files. [default: /tmp]"
    tmp_dir_keep: "Keep the tmp_dir if an exception occurs while running.\\nDefault is to delete all temp files at the end, even\\nif there's a failure.\\n"
    in_fast_q_one: "Input fastq file; 1st end of paired-end reads."
    in_fast_q_two: "Input fastq file; 2nd end of paired-end reads. Must\\nhave same names as inFastq1"
    ref_dbs: "Reference databases (one or more) to deplete from\\ninput. For each db, requires prior creation of\\ndb.bitmask by bmtool, and db.srprism.idx,\\ndb.srprism.map, etc. by srprism mkindex."
  }
  output {
    File out_stdout = stdout()
  }
}