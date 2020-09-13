version 1.0

task Micall {
  input {
    File? batch
    File? outdir
    Boolean? unzipped
    Boolean? keep
    File? interop
    Int? read_len
    Int? index
    Int? bt_two
    Int? bt_two_build
    Int? threads
    File? projects
  }
  command <<<
    micall \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (unzipped) then "--unzipped" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(interop) then ("--interop " +  '"' + interop + '"') else ""} \
      ~{if defined(read_len) then ("--readlen " +  '"' + read_len + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(bt_two) then ("--bt2 " +  '"' + bt_two + '"') else ""} \
      ~{if defined(bt_two_build) then ("--bt2build " +  '"' + bt_two_build + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(projects) then ("--projects " +  '"' + projects + '"') else ""}
  >>>
  parameter_meta {
    batch: "<optional> Path to directory with FASTQ files forbatch\\nprocessing."
    outdir: "<optional> Path to write output files."
    unzipped: "Set if the FASTQ file is not compressed."
    keep: "<optional> if set, all temporary files are retained."
    interop: "<optional> Path to ErrorMetricsOut.bin interop file."
    read_len: "<optional> Read length (default: 251nt)."
    index: "<optional> Index length (default: 8nt)."
    bt_two: "<optional> Path to bowtie2 script."
    bt_two_build: "<optional> Path to bowtie2-build script."
    threads: "Number of threads for bowtie2 (default 4)"
    projects: "<optional> Specify a custom projects JSON file.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}