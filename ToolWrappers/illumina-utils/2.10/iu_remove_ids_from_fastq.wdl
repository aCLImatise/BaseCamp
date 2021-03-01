version 1.0

task Iuremoveidsfromfastq {
  input {
    File? input_fast_q
    File? ids_file_path
    File? delimiter
    File? generate_output_for_survived_only
    Boolean? keep_ids
  }
  command <<<
    iu_remove_ids_from_fastq \
      ~{if defined(input_fast_q) then ("--input-fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(ids_file_path) then ("--ids-file-path " +  '"' + ids_file_path + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if (generate_output_for_survived_only) then "--generate-output-for-survived-only" else ""} \
      ~{if (keep_ids) then "--keep-ids" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.10--py_0"
  }
  parameter_meta {
    input_fast_q: "Sequences file from which reads will be removed in\\nFASTQ format"
    ids_file_path: "Input file that contains the list of ids for removal"
    delimiter: "By default this script will perform exact match match\\nfor IDs you listed in the IDs file. But using this\\nparameter, you can ask the script to \\\"split\\\" the IDs\\nfound in the FASTQ file, and then try to match the\\nfirst part of the resulting ID to those you listed in\\nthe IDs file."
    generate_output_for_survived_only: "If provided then only one output file (the file with\\n\\\"survived\\\" ids) will be produced."
    keep_ids: "If provided, then instead of removing the ids in the\\nlist, only the ids in the list will be kept (and the\\nrest would be removed).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_generate_output_for_survived_only = "${in_generate_output_for_survived_only}"
  }
}