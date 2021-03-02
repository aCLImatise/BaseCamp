version 1.0

task Anviscriptprocessgenbank {
  input {
    File? input_genbank
    File? output_file_prefix
    File? output_fast_a
    File? output_gene_calls
    File? output_functions
    String? annotation_source
    Float? annotation_version
  }
  command <<<
    anvi_script_process_genbank \
      ~{if defined(input_genbank) then ("--input-genbank " +  '"' + input_genbank + '"') else ""} \
      ~{if defined(output_file_prefix) then ("--output-file-prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(output_gene_calls) then ("--output-gene-calls " +  '"' + output_gene_calls + '"') else ""} \
      ~{if defined(output_functions) then ("--output-functions " +  '"' + output_functions + '"') else ""} \
      ~{if defined(annotation_source) then ("--annotation-source " +  '"' + annotation_source + '"') else ""} \
      ~{if defined(annotation_version) then ("--annotation-version " +  '"' + annotation_version + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_genbank: "Input GenBank file"
    output_file_prefix: "A prefix to be used while naming the output files (no\\nfile type extensions please; just a prefix)."
    output_fast_a: "Output FASTA file path."
    output_gene_calls: "DELIMITED FILE\\nOutput file path for external gene calls"
    output_functions: "DELIMITED FILE\\nOutput file path for anvi'o-importable gene functions\\nfile"
    annotation_source: "Annotation source (default: \\\"NCBI_PGAP\\\")"
    annotation_version: "Annotation source version to be stored in the database\\n(default: \\\"v4.6\\\")\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
    File out_output_fast_a = "${in_output_fast_a}"
    File out_output_gene_calls = "${in_output_gene_calls}"
    File out_output_functions = "${in_output_functions}"
  }
}