version 1.0

task PancakeSpecify {
  input {
    String? pan_file
    Array[String] chrom
    String? name
    String? genome
    File? genome_file
    Array[String] delete
  }
  command <<<
    pancake specify \
      ~{if defined(pan_file) then ("--panfile " +  '"' + pan_file + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(genome_file) then ("--genome_file " +  '"' + genome_file + '"') else ""} \
      ~{if defined(delete) then ("--delete " +  '"' + delete + '"') else ""}
  >>>
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    chrom: "name(s) of respective chromosome(s)"
    name: "new name of specified chromosome, this will become the chromosome's name in incidental output files"
    genome: "name of genome CHROM belongs to"
    genome_file: "input file containing mapping of chromosomes to genomes and additional chromosome names"
    delete: "chromosome names to delete"
  }
}