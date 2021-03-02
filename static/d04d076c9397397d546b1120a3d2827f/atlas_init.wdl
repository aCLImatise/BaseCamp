version 1.0

task AtlasInit {
  input {
    File? db_dir
    File? working_dir
    Boolean? assembler
    Boolean? data_type
    Boolean? interleaved_fast_q
    Int? threads
    String job
  }
  command <<<
    atlas init \
      ~{job} \
      ~{if defined(db_dir) then ("--db-dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(working_dir) then ("--working-dir " +  '"' + working_dir + '"') else ""} \
      ~{if (assembler) then "--assembler" else ""} \
      ~{if (data_type) then "--data-type" else ""} \
      ~{if (interleaved_fast_q) then "--interleaved-fastq" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagenome-atlas:2.4.5--py_0"
  }
  parameter_meta {
    db_dir: "location to store databases (need ~50GB)\\n[default: /databases]"
    working_dir: "location to run atlas"
    assembler: "[megahit|spades]    assembler  [default: spades]"
    data_type: "[metagenome|metatranscriptome]\\nsample data type  [default: metagenome]"
    interleaved_fast_q: "fastq files are paired-end in one files\\n(interleaved)"
    threads: "number of threads to use per multi-threaded"
    job: "--skip-qc                       Skip QC, if reads are already pre-processed"
  }
  output {
    File out_stdout = stdout()
  }
}