version 1.0

task SecaprAutomateAll {
  input {
    String? directory_containing_cleaned
    String? output_directory_stored
    String? reference
    String? setting
    String? assembler
    String? cores
  }
  command <<<
    secapr automate_all \
      ~{if defined(directory_containing_cleaned) then ("--input " +  '"' + directory_containing_cleaned + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(setting) then ("--setting " +  '"' + setting + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    directory_containing_cleaned: "The directory containing cleaned fastq files"
    output_directory_stored: "The output directory where all intermediate and final data files will be stored"
    reference: "Provide a reference library (FASTA) containing sequences for the genes of interest (required to find contigs matching targeted regions)."
    setting: "The setting you want to run SECAPR on. \"relaxed\" uses very non-restrictive default values (use when samples are expected to differ considerably from provided reference or are covering wide evolutionary range, e.g. different families or orders). \"conservative\" is very restrictive and can be used when samples are closely related and match provided reference very well."
    assembler: "The assembler to use for de-novo assembly (default=abyss)."
    cores: "Number of computational cores for parallelization of computation."
  }
}