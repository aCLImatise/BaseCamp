version 1.0

task RemoveOutOfBoundsReadspl {
  input {
    Int? chrom_sizes
    Boolean? force
    Directory tag_directory
    String genome
  }
  command <<<
    removeOutOfBoundsReads_pl \
      ~{tag_directory} \
      ~{genome} \
      ~{if defined(chrom_sizes) then ("-chromSizes " +  '"' + chrom_sizes + '"') else ""} \
      ~{if (force) then "-force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chrom_sizes: "(specify the chromosome sizes, default: automatic)"
    force: "(force calculation of chromsome sizes for genome FASTA files)"
    tag_directory: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}