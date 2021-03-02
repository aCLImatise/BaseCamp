version 1.0

task CCMetagenpy {
  input {
    File? mode
    File? res_fp
    File? output_fp
    String? reference_database
    File? extended_output_file
    Int? depth_unit
    Int? map_stat
    Float? depth
    Int? coverage
    Int? query_identity
    Float? p_value
    Float? species_threshold
    Float? genus_threshold
    Float? family_threshold
    Float? order_threshold
    Float? class_threshold
    Int? phylum_threshold
    String? turn_off_sim_thresholds
  }
  command <<<
    CCMetagen_py \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(res_fp) then ("--res_fp " +  '"' + res_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(reference_database) then ("--reference_database " +  '"' + reference_database + '"') else ""} \
      ~{if defined(extended_output_file) then ("--extended_output_file " +  '"' + extended_output_file + '"') else ""} \
      ~{if defined(depth_unit) then ("--depth_unit " +  '"' + depth_unit + '"') else ""} \
      ~{if defined(map_stat) then ("--mapstat " +  '"' + map_stat + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(query_identity) then ("--query_identity " +  '"' + query_identity + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""} \
      ~{if defined(species_threshold) then ("--species_threshold " +  '"' + species_threshold + '"') else ""} \
      ~{if defined(genus_threshold) then ("--genus_threshold " +  '"' + genus_threshold + '"') else ""} \
      ~{if defined(family_threshold) then ("--family_threshold " +  '"' + family_threshold + '"') else ""} \
      ~{if defined(order_threshold) then ("--order_threshold " +  '"' + order_threshold + '"') else ""} \
      ~{if defined(class_threshold) then ("--class_threshold " +  '"' + class_threshold + '"') else ""} \
      ~{if defined(phylum_threshold) then ("--phylum_threshold " +  '"' + phylum_threshold + '"') else ""} \
      ~{if defined(turn_off_sim_thresholds) then ("--turn_off_sim_thresholds " +  '"' + turn_off_sim_thresholds + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ccmetagen:1.2.5--pyh3252c3a_0"
  }
  parameter_meta {
    mode: "what do you want CCMetagen to do? Valid options are\\n'visual', 'text' or 'both': text: parses kma, filters\\nbased on quality and output a text file with taxonomic\\ninformation and detailed mapping information visual:\\nparses kma, filters based on quality and output a\\nsimplified text file and a krona html file for\\nvisualization both: outputs both text and visual file\\nformats. Default = both"
    res_fp: "Path to the KMA result (.res file)"
    output_fp: "Path to the output file. Default = CCMetagen_out"
    reference_database: "Which reference database was used. Options: UNITE,\\nRefSeq or nt. Default = nt"
    extended_output_file: "Produce an extended output file that includes the\\npercentage of classified reads. Options: y or n. To\\nuse this featire, you need to generate the mapstat\\nfile when required unning KMA (use flag -ef), and use\\nit as input in CCMetagen (flag --mapstat). Default = n"
    depth_unit: "Desired unit for Depth(abundance) measurements.\\nDefault = kma (KMA default depth, which is the number\\nof nucleotides overlapping each template, divided by\\nthe lengh of the template). Alternatively, you can\\nhave abundance calculated in Reads Per Million (RPM,\\noption 'rpm'), in number of nucleotides overlaping the\\ntemplate (option 'nc') or in number of fragments (i.e.\\nPE reads, option 'fr'). If you use the 'nc', 'rpm' or\\n'fr' options, remember to change the default --depth\\nparameter accordingly. Valid options are nc, rpm, fr\\nand kma"
    map_stat: "Path to the mapstat file produced with KMA when using\\nthe -ef flag (.mapstat). Required when calculating\\nabundances in RPM or in number of fragments, or when\\nproducing the extended_output_file"
    depth: "minimum sequencing depth. Default = 0.2. The unit\\ncorresponds to the one used with --depth_unit If you\\nuse --depth_unit different from the default, change\\nthis accordingly."
    coverage: "Minimum coverage. Default = 20 (i.e. 20% of the\\nreference sequence)"
    query_identity: "Minimum query identity (Phylum level). Default = 50"
    p_value: "Minimum p-value. Default = 0.05."
    species_threshold: "Species-level similarity threshold. Default = 98.41"
    genus_threshold: "Genus-level similarity threshold. Default = 96.31"
    family_threshold: "Family-level similarity threshold. Default = 88.51"
    order_threshold: "Order-level similarity threshold. Default = 81.21"
    class_threshold: "Class-level similarity threshold. Default = 80.91"
    phylum_threshold: "Phylum-level similarity threshold. Default = 0 - not\\napplied"
    turn_off_sim_thresholds: "Turns simularity-based filtering off. Options = y or\\nn. Default = n"
  }
  output {
    File out_stdout = stdout()
    File out_mode = "${in_mode}"
    File out_output_fp = "${in_output_fp}"
    File out_extended_output_file = "${in_extended_output_file}"
  }
}