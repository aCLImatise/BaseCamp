version 1.0

task Marknonconvertedreadspy {
  input {
    File? reference
    File? bam
    File? out
    Int? c_count
    Boolean? flag_reads
  }
  command <<<
    mark_nonconverted_reads_py \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(c_count) then ("--c_count " +  '"' + c_count + '"') else ""} \
      ~{if (flag_reads) then "--flag_reads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "Reference fasta file"
    bam: "Input bam or sam file (must end in .bam or .sam)\\n[default = stdin]"
    out: "Name for output sam file [default = stdout]"
    c_count: "Minimum number of nonconverted Cs on a read to\\nconsider it nonconverted [default = 3]"
    flag_reads: "Set the 'Failing platform / vendor quality check flag"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}