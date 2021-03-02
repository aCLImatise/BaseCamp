version 1.0

task ProkkaAnnotationsh {
  input {
    File? file_fasta_format
    Directory? directory
    File? sample_identification_mandatory
    String? bacteria_by_default
    String? name_optional_unset
    String? genus_case_known
    String? species_case_known
    String? remove_files_other
    Int? of_threads
    String? usage_message
  }
  command <<<
    prokka_annotation_sh \
      ~{if defined(file_fasta_format) then ("-i " +  '"' + file_fasta_format + '"') else ""} \
      ~{if defined(directory) then ("-o " +  '"' + directory + '"') else ""} \
      ~{if defined(sample_identification_mandatory) then ("-p " +  '"' + sample_identification_mandatory + '"') else ""} \
      ~{if defined(bacteria_by_default) then ("-k " +  '"' + bacteria_by_default + '"') else ""} \
      ~{if defined(name_optional_unset) then ("-g " +  '"' + name_optional_unset + '"') else ""} \
      ~{if defined(genus_case_known) then ("-G " +  '"' + genus_case_known + '"') else ""} \
      ~{if defined(species_case_known) then ("-S " +  '"' + species_case_known + '"') else ""} \
      ~{if defined(remove_files_other) then ("-c " +  '"' + remove_files_other + '"') else ""} \
      ~{if defined(of_threads) then ("-T " +  '"' + of_threads + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_fasta_format: "file in FASTA format"
    directory: "directory"
    sample_identification_mandatory: "for sample identification (mandatory) and output file name"
    bacteria_by_default: "(Bacteria by default)"
    name_optional_unset: "name (optional). If unset, samples will be gathered in NO_GROUP group"
    genus_case_known: "genus in case is known by user"
    species_case_known: "species in case is known by user"
    remove_files_other: ":remove files other than gff and renamed fasta"
    of_threads: "of threads"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
    File out_sample_identification_mandatory = "${in_sample_identification_mandatory}"
  }
}