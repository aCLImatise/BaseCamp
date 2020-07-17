version 1.0

task GenerateExons.py {
  input {
    String? input_exons
    String? input_genome
    String? output_directory_written
  }
  command <<<
    generate_exons.py \
      ~{if defined(input_exons) then ("--input_exons " +  '"' + input_exons + '"') else ""} \
      ~{if defined(input_genome) then ("--input_genome " +  '"' + input_genome + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    input_exons: "Input file with exons positions."
    input_genome: "Input FASTA genome containing the genome sequences."
    output_directory_written: "The output directory where the exons sequences are written. Default is '.'."
  }
}