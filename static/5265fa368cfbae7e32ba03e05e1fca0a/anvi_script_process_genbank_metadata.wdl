version 1.0

task Anviscriptprocessgenbankmetadata {
  input {
    File? metadata
    File? output_dir
    File? output_fast_a_txt
    Boolean? exclude_gene_calls_from_fast_a_txt
  }
  command <<<
    anvi_script_process_genbank_metadata \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_fast_a_txt) then ("--output-fasta-txt " +  '"' + output_fast_a_txt + '"') else ""} \
      ~{if (exclude_gene_calls_from_fast_a_txt) then "--exclude-gene-calls-from-fasta-txt" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    metadata: "This is the file you get from the program `ncbi-\\ngenome-download` when you use the parameter\\n`--metadata-table`."
    output_dir: "Directory path for output files"
    output_fast_a_txt: "This is not a FASTA file, but a TAB-delimited file\\nwith all the file names and paths processed by this\\nprogram. This output can directly go into the anvi'o\\nsnakemake workflows because magic."
    exclude_gene_calls_from_fast_a_txt: "This flag will exclude the external gene calls and\\nfunctions from the fasta.txt file. Files for external\\ngene calls and functions according to the information\\nstored in GenBank file, but they will simply not be\\nincluded in your fasta.txt file. By doing so you will\\n*gurantee* that when you use this file from within a\\nworkflow, anvi'o wil use its default gene caller to\\nidentify genes.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
    File out_output_fast_a_txt = "${in_output_fast_a_txt}"
  }
}