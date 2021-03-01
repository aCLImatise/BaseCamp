version 1.0

task ProBAMpy {
  input {
    File? location_psm_processed
    File? name
    String? mismatches
    String? database
    String? species
    Directory? directory
    String? rm_duplicates
    String? three_frame_translation
    String? decoy_annotation
    String? sorting_order
    String? pre_picked_annotation
    String? include_unmapped
    String? conversion_mode
    File? comments
    String? validated_only
  }
  command <<<
    proBAM_py \
      ~{if defined(location_psm_processed) then ("--file " +  '"' + location_psm_processed + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(rm_duplicates) then ("--rm_duplicates " +  '"' + rm_duplicates + '"') else ""} \
      ~{if defined(three_frame_translation) then ("--three_frame_translation " +  '"' + three_frame_translation + '"') else ""} \
      ~{if defined(decoy_annotation) then ("--decoy_annotation " +  '"' + decoy_annotation + '"') else ""} \
      ~{if defined(sorting_order) then ("--sorting_order " +  '"' + sorting_order + '"') else ""} \
      ~{if defined(pre_picked_annotation) then ("--pre_picked_annotation " +  '"' + pre_picked_annotation + '"') else ""} \
      ~{if defined(include_unmapped) then ("--include_unmapped " +  '"' + include_unmapped + '"') else ""} \
      ~{if defined(conversion_mode) then ("--conversion_mode " +  '"' + conversion_mode + '"') else ""} \
      ~{if defined(comments) then ("--comments " +  '"' + comments + '"') else ""} \
      ~{if defined(validated_only) then ("--validated_only " +  '"' + validated_only + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    location_psm_processed: "location of the psm file to be processed"
    name: "name of the project (will be determine how the output\\nfile is called"
    mismatches: "numpber of mismatches allowed during mapping"
    database: "Which database has to be used (currently only ENSEMBL\\nis available"
    species: "species to be used"
    directory: "location where to output files should be stored"
    rm_duplicates: "Whether duplicates should be removes"
    three_frame_translation: "translate transcript sequences in 3 frames"
    decoy_annotation: "annotation for DECOY PSM"
    sorting_order: "sorting order of the SAM file"
    pre_picked_annotation: "Which/How annotation should be identified"
    include_unmapped: "Whether unmapped psm should be included in the output"
    conversion_mode: "which ouput format should be generated"
    comments: "add a comment to the file"
    validated_only: "only process validated PSMs (for mzIdentML\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name = "${in_name}"
  }
}