version 1.0

task GenerateChromLens.py {
  input {
    String? input_genome
    String? output_directory_written
  }
  command <<<
    generate_chrom_lens.py \
      ~{if defined(input_genome) then ("--input_genome " +  '"' + input_genome + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    input_genome: "Input FASTA genome containing the genome sequences."
    output_directory_written: "The output directory where the genes sequences are written. Default is '.'."
  }
}