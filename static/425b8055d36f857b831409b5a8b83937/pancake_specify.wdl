version 1.0

task PancakeSpecify {
  input {
    File? pan_file
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    chrom: "name(s) of respective chromosome(s)"
    name: "new name of specified chromosome, this will become the\\nchromosome's name in incidental output files"
    genome: "name of genome CHROM belongs to"
    genome_file: "input file containing mapping of chromosomes to\\ngenomes and additional chromosome names"
    delete: "chromosome names to delete\\n"
  }
  output {
    File out_stdout = stdout()
  }
}