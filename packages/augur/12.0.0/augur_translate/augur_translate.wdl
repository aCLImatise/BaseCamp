version 1.0

task AugurTranslate {
  input {
    String? tree
    String? ancestral_sequences
    File? reference_sequence
    Array[String] genes
    File? output_node_data
    File? alignment_output
    File? vcf_reference_output
    File? vcf_reference
  }
  command <<<
    augur translate \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(ancestral_sequences) then ("--ancestral-sequences " +  '"' + ancestral_sequences + '"') else ""} \
      ~{if defined(reference_sequence) then ("--reference-sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(output_node_data) then ("--output-node-data " +  '"' + output_node_data + '"') else ""} \
      ~{if defined(alignment_output) then ("--alignment-output " +  '"' + alignment_output + '"') else ""} \
      ~{if defined(vcf_reference_output) then ("--vcf-reference-output " +  '"' + vcf_reference_output + '"') else ""} \
      ~{if defined(vcf_reference) then ("--vcf-reference " +  '"' + vcf_reference + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:12.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    tree: "prebuilt Newick -- no tree will be built if provided\\n(default: None)"
    ancestral_sequences: "JSON (fasta input) or VCF (VCF input) containing\\nancestral and tip sequences (default: None)"
    reference_sequence: "GenBank or GFF file containing the annotation\\n(default: None)"
    genes: "genes to translate (list or file containing list)\\n(default: None)"
    output_node_data: "name of JSON file to save aa-mutations to (default:\\nNone)"
    alignment_output: "write out translated gene alignments. If a VCF-input,\\na .vcf or .vcf.gz will be output here (depending on\\nfile ending). If fasta-input, specify the file name\\nlike so: 'my_alignment_%GENE.fasta', where '%GENE'\\nwill be replaced by the name of the gene (default:\\nNone)"
    vcf_reference_output: "fasta file where reference sequence translations for\\nVCF input will be written (default: None)"
    vcf_reference: "fasta file of the sequence the VCF was mapped to\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}