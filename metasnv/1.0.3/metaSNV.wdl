version 1.0

task MetaSNV.py {
  input {
    String? db_ann
    Boolean? print_commands
    Int? threads
    Int? n_splits
    String dir
    File file
    String ref_db_file
  }
  command <<<
    metaSNV.py \
      ~{dir} \
      ~{file} \
      ~{ref_db_file} \
      ~{if defined(db_ann) then ("--db_ann " +  '"' + db_ann + '"') else ""} \
      ~{true="--print-commands" false="" print_commands} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(n_splits) then ("--n_splits " +  '"' + n_splits + '"') else ""}
  >>>
  parameter_meta {
    db_ann: "Database gene annotation."
    print_commands: "Instead of executing the commands, simply print them out"
    threads: "Number of jobs to run simmultaneously. Will create same number of splits, unless n_splits set differently."
    n_splits: "Number of bins to split ref into"
    dir: "A metaSNP initialized project directory"
    file: "File with an input list of bam files, one file per line"
    ref_db_file: "reference multi-sequence FASTA file used for the alignments."
  }
}