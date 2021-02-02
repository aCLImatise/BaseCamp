version 1.0

task Teloclipextract {
  input {
    File? ref_idx
    String? prefix
    Boolean? extract_reads
    Directory? extract_dir
    Int? min_clip
    Int? max_break
  }
  command <<<
    teloclip_extract \
      ~{if defined(ref_idx) then ("--refIdx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (extract_reads) then "--extractReads" else ""} \
      ~{if defined(extract_dir) then ("--extractDir " +  '"' + extract_dir + '"') else ""} \
      ~{if defined(min_clip) then ("--minClip " +  '"' + min_clip + '"') else ""} \
      ~{if defined(max_break) then ("--maxBreak " +  '"' + max_break + '"') else ""}
  >>>
  parameter_meta {
    ref_idx: "Path to fai index for reference fasta. Index fasta\\nusing `samtools faidx FASTA`"
    prefix: "Use this prefix for output files. Default: None."
    extract_reads: "If set, write overhang reads to fasta by contig."
    extract_dir: "Write extracted reads to this directory. Default: cwd."
    min_clip: "Require clip to extend past ref contig end by at least\\nN bases."
    max_break: "Tolerate max N unaligned bases at contig ends."
  }
  output {
    File out_stdout = stdout()
  }
}