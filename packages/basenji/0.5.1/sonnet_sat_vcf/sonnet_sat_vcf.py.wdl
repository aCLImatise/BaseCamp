version 1.0

task SonnetSatVcfpy {
  input {
    Int? nucleotides_downstream_mutate
    Int? figure_width
    Int? fone
    Directory? output_directory
    Boolean? rc
    Int? shifts
    String? species
    File? file_specifying_indexes
    String format
  }
  command <<<
    sonnet_sat_vcf_py \
      ~{format} \
      ~{if defined(nucleotides_downstream_mutate) then ("-d " +  '"' + nucleotides_downstream_mutate + '"') else ""} \
      ~{if defined(figure_width) then ("-f " +  '"' + figure_width + '"') else ""} \
      ~{if defined(fone) then ("--f1 " +  '"' + fone + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(file_specifying_indexes) then ("-t " +  '"' + file_specifying_indexes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    nucleotides_downstream_mutate: "Nucleotides downstream of center sequence to mutate\\n[Default: 0]"
    figure_width: "Figure width [Default: 20]"
    fone: "Genome FASTA which which major allele sequences will be"
    output_directory: "Output directory [Default: sat_vcf]"
    rc: "Ensemble forward and reverse complement predictions\\n[Default: False]"
    shifts: "Ensemble prediction shifts [Default: 0]"
    species: "Comma-separated list of stats to save. [Default: sum]"
    file_specifying_indexes: "File specifying target indexes and labels in table"
    format: "-u MUT_UP           Nucleotides upstream of center sequence to mutate"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}