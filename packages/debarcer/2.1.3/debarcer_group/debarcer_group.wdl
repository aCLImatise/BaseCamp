version 1.0

task DebarcerGroup {
  input {
    Directory? outdir
    Int? region
    File? bam_file
    File? config
    String? distance
    String? position
    String? ignore
    String? truncate
    String? separator
    Int? read_count
  }
  command <<<
    debarcer group \
      ~{if defined(outdir) then ("--Outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(region) then ("--Region " +  '"' + region + '"') else ""} \
      ~{if defined(bam_file) then ("--Bamfile " +  '"' + bam_file + '"') else ""} \
      ~{if defined(config) then ("--Config " +  '"' + config + '"') else ""} \
      ~{if defined(distance) then ("--Distance " +  '"' + distance + '"') else ""} \
      ~{if defined(position) then ("--Position " +  '"' + position + '"') else ""} \
      ~{if defined(ignore) then ("--Ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(truncate) then ("--Truncate " +  '"' + truncate + '"') else ""} \
      ~{if defined(separator) then ("--Separator " +  '"' + separator + '"') else ""} \
      ~{if defined(read_count) then ("--ReadCount " +  '"' + read_count + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/debarcer:2.1.3--py_0"
  }
  parameter_meta {
    outdir: "Output directory where subdirectories are created"
    region: "Region coordinates to search for UMIs. chrN:posA-posB.\\nposA and posB are 1-based included"
    bam_file: "Path to the BAM file"
    config: "Path to the config file"
    distance: "Hamming distance threshold for connecting parent-\\nchildren umis"
    position: "Umi position threshold for grouping umis together"
    ignore: "Keep the most abundant family and ignore families at\\nother positions within each group. Default is False"
    truncate: "Discard reads overlapping with the genomic region if\\nTrue. Default is False"
    separator: "String separating the UMI from the remaining of the\\nread name"
    read_count: "Minimum number of reads in region required for\\ngrouping. Default is 0\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}