version 1.0

task MarkNonconvertedReads.py {
  input {
    String? reference
    String? bam
    String? out
    String? c_count
    Boolean? flag_reads
  }
  command <<<
    mark-nonconverted-reads.py \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(c_count) then ("--c_count " +  '"' + c_count + '"') else ""} \
      ~{true="--flag_reads" false="" flag_reads}
  >>>
  parameter_meta {
    reference: "Reference fasta file"
    bam: "Input bam or sam file (must end in .bam or .sam) [default = stdin]"
    out: "Name for output sam file [default = stdout]"
    c_count: "Minimum number of nonconverted Cs on a read to consider it nonconverted [default = 3]"
    flag_reads: "Set the 'Failing platform / vendor quality check flag"
  }
}