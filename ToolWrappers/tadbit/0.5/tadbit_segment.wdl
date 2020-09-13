version 1.0

task TadbitSegment {
  input {
    File? workdir
    File? tmp_db
    Boolean? no_sql
    Boolean? all_bins
    File? m_reads
    File? biases
    Int? resolution
    File? norm_matrix
    File? raw_matrix
    Array[Int] filter
    Boolean? nox
    Boolean? only_compartments
    Boolean? verbose
    Int? jobid
    Array[String] chromosomes
    Int? cpu
    Boolean? force
    File? rich_in_a
    File? fast_a
    Boolean? save_corr
    Boolean? fix_corr_scale
    File? format
    Int? n_evs
    Array[Int] ev_index
    Int? max_tad_size
    String matrix
  }
  command <<<
    tadbit segment \
      ~{matrix} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(tmp_db) then ("--tmpdb " +  '"' + tmp_db + '"') else ""} \
      ~{if (no_sql) then "--nosql" else ""} \
      ~{if (all_bins) then "--all_bins" else ""} \
      ~{if defined(m_reads) then ("--mreads " +  '"' + m_reads + '"') else ""} \
      ~{if defined(biases) then ("--biases " +  '"' + biases + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(norm_matrix) then ("--norm_matrix " +  '"' + norm_matrix + '"') else ""} \
      ~{if defined(raw_matrix) then ("--raw_matrix " +  '"' + raw_matrix + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (nox) then "--noX" else ""} \
      ~{if (only_compartments) then "--only_compartments" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(jobid) then ("--jobid " +  '"' + jobid + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(rich_in_a) then ("--rich_in_A " +  '"' + rich_in_a + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (save_corr) then "--savecorr" else ""} \
      ~{if (fix_corr_scale) then "--fix_corr_scale" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(n_evs) then ("--n_evs " +  '"' + n_evs + '"') else ""} \
      ~{if defined(ev_index) then ("--ev_index " +  '"' + ev_index + '"') else ""} \
      ~{if defined(max_tad_size) then ("--max_tad_size " +  '"' + max_tad_size + '"') else ""}
  >>>
  parameter_meta {
    workdir: "path to working directory (generated with the tool tadbit mapper)"
    tmp_db: "if provided uses this directory to manipulate the database"
    no_sql: "do not load/store data from/in sqlite database"
    all_bins: "skip the filtering of bins for detection of TADs"
    m_reads: "path valid-pairs file (TADbit BAM format)"
    biases: "path to file with precalculated biases by columns"
    resolution: "resolution at which to output matrices"
    norm_matrix: "path to a matrix file with normalized read counts"
    raw_matrix: "path to a matrix file with raw read counts"
    filter: "[[1, 2, 3, 4, 6, 7, 9, 10]] Use filters to define a set os valid\\npair of reads e.g.: '--apply 1 2 3 4 8 9 10'. Where these\\nnumberscorrespond to: 1: self-circle, 2: dangling-end, 3: error, 4:\\nextra dangling-end, 5: too close from RES, 6: too short, 7: too\\nlarge, 8: over-represented, 9: duplicated, 10: random breaks, 11:\\ntrans-chromosomic"
    nox: "no display server (X screen)"
    only_compartments: "search A/B compartments using first eigen vector of the correlation"
    verbose: "print more messages"
    jobid: "Use as input data generated by a job with a given jobid. Use tadbit\\ndescribe to find out which."
    chromosomes: "Name of the chromosomes on which to search for TADs or compartments."
    cpu: "[8] Maximum number of CPU cores available in the execution host. If\\nhigher than 1, tasks with multi-threading capabilities will enabled\\n(if 0 all available) cores will be used"
    force: "overwrite previously run job"
    rich_in_a: "path to a BED or bedGraph file with list of protein coding gene or\\nother active epigenetic mark, to be used to label compartments\\ninstead of using the relative interaction count."
    fast_a: "Path to fasta file with genome sequence, to compute GC content and\\nuse it to label compartments"
    save_corr: "Save correlation matrix used to predict compartments."
    fix_corr_scale: "Correlation matrix plot scaled between correlation 1 and -1 instead\\nof maximum observed values."
    format: "[png] file format for figures"
    n_evs: "[3] Number of eigenvectors to store. if \\\"-1\\\" all eigenvectors will\\nbe calculated"
    ev_index: "list of indexes of eigenvectors capturing compartments signal (one\\nindex per chromosome, in the same order as chromosomes in fasta\\nfile). Example picking the first eigenvector for all chromosomes but\\nfor chromosome 3: '--ev_index 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1\\n1 1 1 1"
    max_tad_size: "an integer defining the maximum size of TAD. Default defines it as\\nthe number of rows/columns\\n"
    matrix: "--only_tads              search TAD boundaries break-point detection algorithm"
  }
  output {
    File out_stdout = stdout()
  }
}