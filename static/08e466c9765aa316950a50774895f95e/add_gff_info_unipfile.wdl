version 1.0

task AddGffInfoUnipfile {
  input {
    String? mapping_file
    Boolean? force_tax_on_id
    Boolean? mapping
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    add-gff-info unipfile \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(mapping_file) then ("--mapping-file " +  '"' + mapping_file + '"') else ""} \
      ~{true="--force-taxon-id" false="" force_tax_on_id} \
      ~{true="--mapping" false="" mapping} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    mapping_file: "Uniprot mapping file  [required]"
    force_tax_on_id: "Overwrite taxon_id if already present"
    mapping: "[NCBI_TaxID|eggNOG|KO|KEGG|BioCyc|UniPathway|EMBL|EMBL-CDS|GI|STRING] Mappings to add  [required]"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
}