version 1.0

task CreateData {
  input {
    String? microsatellites_list
    Directory? save_location
    String? coverage
    Int? cores
    File? tumor_bam
    File? normal_bam
    File? case_id
    String? norm_case_id
    File? case_list
    File? name
  }
  command <<<
    create_data \
      ~{if defined(microsatellites_list) then ("--microsatellites-list " +  '"' + microsatellites_list + '"') else ""} \
      ~{if defined(save_location) then ("--save-location " +  '"' + save_location + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(tumor_bam) then ("--tumor-bam " +  '"' + tumor_bam + '"') else ""} \
      ~{if defined(normal_bam) then ("--normal-bam " +  '"' + normal_bam + '"') else ""} \
      ~{if defined(case_id) then ("--case-id " +  '"' + case_id + '"') else ""} \
      ~{if defined(norm_case_id) then ("--norm-case-id " +  '"' + norm_case_id + '"') else ""} \
      ~{if defined(case_list) then ("--case-list " +  '"' + case_list + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mimsi:0.4.3--pyhdfd78af_0"
  }
  parameter_meta {
    microsatellites_list: "The list of microsatellites to check in the\\ntumor/normal pair (default:\\ntests/microsatellites_impact_only.list)"
    save_location: "The location on the filesystem to save the converted\\nvectors (default:\\nCurrent_working_directory/generated_samples/).\\nWARNING: Existing files in this directory in the\\nformats *_locations.npy and *_data.npy will be\\ndeleted!"
    coverage: "Required coverage for both the tumor and the normal.\\nAny coverage in excess of this limit will be randomly\\ndownsampled"
    cores: "Number of cores to utilize in parallel"
    tumor_bam: "Tumor bam file for conversion"
    normal_bam: "Matched normal bam file for conversion"
    case_id: "Unique identifier for the single sample/case\\nsubmitted. This will be the filename for any saved\\nresults (default: TestCase)"
    norm_case_id: "Normal case name (default: None)"
    case_list: "Case List for generating sample vectors in bulk, if\\nspecified all other input file args will be ignored"
    name: "name of the run submitted using --case-list, this will\\nbe the filename for any saved results in the tsv\\nformat (default: BATCH)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}