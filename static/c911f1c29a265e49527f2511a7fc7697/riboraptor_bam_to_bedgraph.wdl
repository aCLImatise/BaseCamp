version 1.0

task RiboraptorBamtobedgraph {
  input {
    File? bam
    Boolean? strand
    Boolean? end_type
    File? save_to
  }
  command <<<
    riboraptor bam_to_bedgraph \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (end_type) then "--end_type" else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  parameter_meta {
    bam: "Path to BAM file  [required]"
    strand: "[+|-|both]         Count from strand of this type only"
    end_type: "[5prime|3prime|either]\\nPileup 5' / 3'/ either ends"
    save_to: "Path to write bedgraph output"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}