version 1.0

task BlobtoolsBamfilter {
  input {
    File? bam
    File? include
    File? exclude
    Boolean? exclude_unmapped
    Boolean? non_interleaved
    String? read_format
    String? out
  }
  command <<<
    blobtools bamfilter \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (exclude_unmapped) then "--exclude_unmapped" else ""} \
      ~{if (non_interleaved) then "--noninterleaved" else ""} \
      ~{if defined(read_format) then ("--read_format " +  '"' + read_format + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "BAM file (sorted by name)"
    include: "List of contigs whose reads are included\\n- writes FASTAs of pairs where at least\\none read maps sequences in list\\n(InUn.fq, InIn.fq, ExIn.fq)"
    exclude: "List of contigs whose reads are excluded (outputs reads that do not map to sequences in list)\\n- writes FASTAs of pairs where at least\\none read does not maps to sequences in list\\n(InUn.fq, InIn.fq, ExIn.fq)"
    exclude_unmapped: "Include pairs where both reads are unmapped"
    non_interleaved: "Use if fw and rev reads should be in separate files"
    read_format: "FASTQ = fq, FASTA = fa [default: fa]"
    out: "Output prefix"
  }
  output {
    File out_stdout = stdout()
  }
}