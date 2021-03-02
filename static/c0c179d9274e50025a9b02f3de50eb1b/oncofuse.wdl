version 1.0

task Oncofuse {
  input {
    Int? genome_assembly_version
    Int? number_threads_uses
    String input_file
    String input_type
  }
  command <<<
    oncofuse \
      ~{input_file} \
      ~{input_type} \
      ~{if defined(genome_assembly_version) then ("-a " +  '"' + genome_assembly_version + '"') else ""} \
      ~{if defined(number_threads_uses) then ("-p " +  '"' + number_threads_uses + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_assembly_version: "Genome assembly version, default is hg19. Allowed values: hg18, hg19, hg38"
    number_threads_uses: "Number of threads, uses all available processors by default"
    input_file: ""
    input_type: ""
  }
  output {
    File out_stdout = stdout()
  }
}