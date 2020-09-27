version 1.0

task MagpurifyKnowncontam {
  input {
    File? db
    Int? pid
    Float? evalue
    Int? q_cov
    Int? threads
    String fna
    String out
  }
  command <<<
    magpurify known_contam \
      ~{fna} \
      ~{out} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(pid) then ("--pid " +  '"' + pid + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(q_cov) then ("--qcov " +  '"' + q_cov + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    db: "Path to reference database. By default, the IMAGEN_DB\\nenvironmental variable is used (default: None)"
    pid: "Minimum % identity to reference (default: 98)"
    evalue: "Maximum evalue (default: 1e-05)"
    q_cov: "Minimum percent query coverage (default: 25)"
    threads: "Number of CPUs to use (default: 1)"
    fna: "Path to input genome in FASTA format"
    out: "Output directory to store results and intermediate files"
  }
  output {
    File out_stdout = stdout()
  }
}