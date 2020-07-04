version 1.0

task ShieldGenes.py {
  input {
    String? organism
    String? output_directory_written
    String? read_len
    Boolean? pseudo_genes_check
    Boolean? use_synonyms
  }
  command <<<
    shield_genes.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""} \
      ~{if defined(read_len) then ("--read-len " +  '"' + read_len + '"') else ""} \
      ~{true="--pseudo-genes-check" false="" pseudo_genes_check} \
      ~{true="--use-synonyms" false="" use_synonyms}
  >>>
  parameter_meta {
    organism: "The name of the organism, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_written: "The output directory where the output will be written. Default is '.'."
    read_len: "Read length used to computer the similarity between different regions/genes. Default is '60'."
    pseudo_genes_check: "Skip the pseudogenes check. Default is 'False'."
    use_synonyms: "Use the synonyms symbols for genes. Default is 'False'."
  }
}