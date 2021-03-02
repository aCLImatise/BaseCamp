version 1.0

task AddgffinfoUnipfile {
  input {
    File? mapping_file
    Boolean? force_tax_on_id
    Boolean? mapping
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info unipfile \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(mapping_file) then ("--mapping-file " +  '"' + mapping_file + '"') else ""} \
      ~{if (force_tax_on_id) then "--force-taxon-id" else ""} \
      ~{if (mapping) then "--mapping" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    mapping_file: "Uniprot mapping file  [required]"
    force_tax_on_id: "Overwrite taxon_id if already present"
    mapping: "[NCBI_TaxID|eggNOG|KO|KEGG|BioCyc|UniPathway|EMBL|EMBL-CDS|GI|STRING]\\nMappings to add  [required]"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}