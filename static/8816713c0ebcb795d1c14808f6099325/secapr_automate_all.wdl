version 1.0

task SecaprAutomateAll {
  input {
    Directory? directory_containing_files
    Directory? output_directory_where
    String? reference
    String? setting
    String? assembler
    Int? cores
  }
  command <<<
    secapr automate_all \
      ~{if defined(directory_containing_files) then ("--input " +  '"' + directory_containing_files + '"') else ""} \
      ~{if defined(output_directory_where) then ("--output " +  '"' + output_directory_where + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(setting) then ("--setting " +  '"' + setting + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_containing_files: "The directory containing cleaned fastq files"
    output_directory_where: "The output directory where all intermediate and final\\ndata files will be stored"
    reference: "Provide a reference library (FASTA) containing\\nsequences for the genes of interest (required to find\\ncontigs matching targeted regions)."
    setting: "The setting you want to run SECAPR on. \\\"relaxed\\\" uses\\nvery non-restrictive default values (use when samples\\nare expected to differ considerably from provided\\nreference or are covering wide evolutionary range,\\ne.g. different families or orders). \\\"conservative\\\" is\\nvery restrictive and can be used when samples are\\nclosely related and match provided reference very\\nwell."
    assembler: "The assembler to use for de-novo assembly\\n(default=abyss)."
    cores: "Number of computational cores for parallelization of\\ncomputation.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_where = "${in_output_directory_where}"
  }
}