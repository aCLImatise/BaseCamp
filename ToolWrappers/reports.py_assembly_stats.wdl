version 1.0

task ReportspyAssemblyStats {
  input {
    Array[String] cov_thresholds
    Directory? assembly_dir
    Directory? assembly_tmp
    Directory? align_dir
    Directory? reads_dir
    Directory? raw_reads_dir
    String samples
    String outfile
  }
  command <<<
    reports_py assembly_stats \
      ~{samples} \
      ~{outfile} \
      ~{if defined(cov_thresholds) then ("--cov_thresholds " +  '"' + cov_thresholds + '"') else ""} \
      ~{if defined(assembly_dir) then ("--assembly_dir " +  '"' + assembly_dir + '"') else ""} \
      ~{if defined(assembly_tmp) then ("--assembly_tmp " +  '"' + assembly_tmp + '"') else ""} \
      ~{if defined(align_dir) then ("--align_dir " +  '"' + align_dir + '"') else ""} \
      ~{if defined(reads_dir) then ("--reads_dir " +  '"' + reads_dir + '"') else ""} \
      ~{if defined(raw_reads_dir) then ("--raw_reads_dir " +  '"' + raw_reads_dir + '"') else ""}
  >>>
  parameter_meta {
    cov_thresholds: "Genome coverage thresholds to report on. (default: (1,\\n5, 20, 100))"
    assembly_dir: "Directory with assembly outputs. (default:\\ndata/02_assembly)"
    assembly_tmp: "Directory with assembly temp files. (default:\\ntmp/02_assembly)"
    align_dir: "Directory with reads aligned to own assembly.\\n(default: data/02_align_to_self)"
    reads_dir: "Directory with unaligned filtered read BAMs. (default:\\ndata/01_per_sample)"
    raw_reads_dir: "Directory with unaligned raw read BAMs. (default:\\ndata/00_raw)\\n"
    samples: "Sample names."
    outfile: "Output report file."
  }
  output {
    File out_stdout = stdout()
  }
}