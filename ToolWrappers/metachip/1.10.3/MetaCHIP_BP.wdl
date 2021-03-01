version 1.0

task MetaCHIPBP {
  input {
    String? output_prefix
    String? grouping_rank
    File? grouping_file
    Int? cov
    Int? al
    Int? flk
    Int? ip
    Int? ei
    Int? number_threads_default
    Boolean? no_eb_check
    Boolean? force
    Boolean? quiet
    Boolean? tmp
  }
  command <<<
    MetaCHIP BP \
      ~{if defined(output_prefix) then ("-p " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(grouping_rank) then ("-r " +  '"' + grouping_rank + '"') else ""} \
      ~{if defined(grouping_file) then ("-g " +  '"' + grouping_file + '"') else ""} \
      ~{if defined(cov) then ("-cov " +  '"' + cov + '"') else ""} \
      ~{if defined(al) then ("-al " +  '"' + al + '"') else ""} \
      ~{if defined(flk) then ("-flk " +  '"' + flk + '"') else ""} \
      ~{if defined(ip) then ("-ip " +  '"' + ip + '"') else ""} \
      ~{if defined(ei) then ("-ei " +  '"' + ei + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if (no_eb_check) then "-NoEbCheck" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (tmp) then "-tmp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0"
  }
  parameter_meta {
    output_prefix: "output prefix"
    grouping_rank: "grouping rank"
    grouping_file: "grouping file"
    cov: "coverage cutoff, default: 75"
    al: "alignment length cutoff, default: 200"
    flk: "the length of flanking sequences to plot (Kbp), default: 10"
    ip: "identity percentile cutoff, default: 90"
    ei: "end match identity cutoff, default: 80"
    number_threads_default: "number of threads, default: 1"
    no_eb_check: "disable end break and contig match check for fast processing,\\nnot recommend for metagenome-assembled genomes (MAGs)"
    force: "overwrite previous results"
    quiet: "Do not report progress"
    tmp: "keep temporary files"
  }
  output {
    File out_stdout = stdout()
  }
}