version 1.0

task PyScaf {
  input {
    File? fast_a
    String? output_stream
    Int? threads
    String? log
    Boolean? dotplot
    File? reference
    Int? identity
    Int? overlap
    Int? max_gap
    Boolean? no_rearrangements
    Array[String] long_reads
    Array[String] fast_q
    Int? joins
    Int? link_ratio
    Float? load
    Int? mapq
  }
  command <<<
    pyScaf \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(output_stream) then ("--output " +  '"' + output_stream + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (dotplot) then "--dotplot" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(max_gap) then ("--maxgap " +  '"' + max_gap + '"') else ""} \
      ~{if (no_rearrangements) then "--norearrangements" else ""} \
      ~{if defined(long_reads) then ("--longreads " +  '"' + long_reads + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(joins) then ("--joins " +  '"' + joins + '"') else ""} \
      ~{if defined(link_ratio) then ("--linkratio " +  '"' + link_ratio + '"') else ""} \
      ~{if defined(load) then ("--load " +  '"' + load + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "assembly FASTA file"
    output_stream: "output stream [scaffolds.fa]"
    threads: "max no. of threads to run [4]"
    log: "output log to [stderr]"
    dotplot: "{,png,gif,pdf}\\ngenerate dotplot as [png]"
    reference: "reference FastA file"
    identity: "min. identity [0.33]"
    overlap: "min. overlap  [0.66]"
    max_gap: "max. distance between adjacent contigs [0.01 * assembly_size]"
    no_rearrangements: "high identity mode (rearrangements not allowed)"
    long_reads: "FastQ/FastA file(s) with PacBio/ONT reads"
    fast_q: "FASTQ PE/MP files"
    joins: "min pairs to join contigs [5]"
    link_ratio: "max link ratio between two best contig pairs [0.7]"
    load: "align subset of reads [0.2]"
    mapq: "min mapping quality [10]"
  }
  output {
    File out_stdout = stdout()
  }
}