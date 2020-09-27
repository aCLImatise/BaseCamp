version 1.0

task RgttoolspyBedToFasta {
  input {
    File? input_bed_file
    Directory? output_directory_fasta
    Boolean? genome
    Boolean? loci
    Boolean? order
    Boolean? block
    Boolean? score
  }
  command <<<
    rgt_tools_py bed_to_fasta \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_directory_fasta) then ("-o " +  '"' + output_directory_fasta + '"') else ""} \
      ~{if (genome) then "-genome" else ""} \
      ~{if (loci) then "-loci" else ""} \
      ~{if (order) then "-order" else ""} \
      ~{if (block) then "-block" else ""} \
      ~{if (score) then "-score" else ""}
  >>>
  parameter_meta {
    input_bed_file: "Input BED file"
    output_directory_fasta: "Output directory for FASTA files"
    genome: "Define the FASTA file of the genome sequence"
    loci: "Make genomic loci as sequence name"
    order: "Make ranking number as sequence name"
    block: "Read blocks"
    score: "Load the score column in BED into FASTA"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_fasta = "${in_output_directory_fasta}"
  }
}