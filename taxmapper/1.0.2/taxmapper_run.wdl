version 1.0

task TaxmapperRun {
  input {
    String? database
    Directory? folder
    String? reverse
    String? suffix
    Int? maximum_read_length
    String? out
    String? threads
  }
  command <<<
    taxmapper run \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(folder) then ("--folder " +  '"' + folder + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(maximum_read_length) then ("-m " +  '"' + maximum_read_length + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    database: "Database path for RAPseach database index"
    folder: "Folder with reads in fasta or fastq format"
    reverse: "Reads also contain reverse read, [default: True]"
    suffix: "Suffix of paired end reads, [default: \"_R1,_R2\"]"
    maximum_read_length: "Maximum read length"
    out: "Output folder, [default: \"results\"]"
    threads: "Number of threads, [default: 4]"
  }
}