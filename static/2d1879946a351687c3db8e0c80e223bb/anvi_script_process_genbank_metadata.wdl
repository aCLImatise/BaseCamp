version 1.0

task AnviScriptProcessGenbankMetadata {
  input {
    String? metadata
    String? output_dir
    String? output_fast_a_txt
    Boolean? exclude_gene_calls_from_fast_a_txt
  }
  command <<<
    anvi-script-process-genbank-metadata \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_fast_a_txt) then ("--output-fasta-txt " +  '"' + output_fast_a_txt + '"') else ""} \
      ~{true="--exclude-gene-calls-from-fasta-txt" false="" exclude_gene_calls_from_fast_a_txt}
  >>>
  parameter_meta {
    metadata: "This is the file you get from the program `ncbi- genome-download` when you use the parameter `--metadata-table`."
    output_dir: "Directory path for output files"
    output_fast_a_txt: "This is not a FASTA file, but a TAB-delimited file with all the file names and paths processed by this program. This output can directly go into the anvi'o snakemake workflows because magic."
    exclude_gene_calls_from_fast_a_txt: "This flag will exclude the external gene calls and functions from the fasta.txt file. Files for external gene calls and functions according to the information stored in GenBank file, but they will simply not be included in your fasta.txt file. By doing so you will *gurantee* that when you use this file from within a workflow, anvi'o wil use its default gene caller to identify genes."
  }
}