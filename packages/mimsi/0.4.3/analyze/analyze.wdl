version 1.0

task Analyze {
  input {
    Boolean? no_cuda
    Int? model
    Boolean? save
    String? save_format
    Int? seed
    String? microsatellites_list
    Directory? save_location
    Int? cores
    String? coverage
    File? confidence_interval
    Boolean? use_attention
    File? tumor_bam
    File? normal_bam
    File? case_id
    String? norm_case_id
    File? case_list
    File? name
  }
  command <<<
    analyze \
      ~{if (no_cuda) then "--no-cuda" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if defined(save_format) then ("--save-format " +  '"' + save_format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(microsatellites_list) then ("--microsatellites-list " +  '"' + microsatellites_list + '"') else ""} \
      ~{if defined(save_location) then ("--save-location " +  '"' + save_location + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(confidence_interval) then ("--confidence-interval " +  '"' + confidence_interval + '"') else ""} \
      ~{if (use_attention) then "--use-attention" else ""} \
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
    no_cuda: "Disables CUDA for use off GPU, if this is not\\nspecified the utility will check availability of\\ntorch.cuda"
    model: "name of the saved model weights to load (default:\\nmodel/mimsi_mskcc_impact_200.model)"
    save: "save the results of the evaluation to a numpy array or\\na tsv text file"
    save_format: "save the results of the evaluation to a numpy array or\\nas summary in a tsv text file or both"
    seed: "Random Seed (default: 2)"
    microsatellites_list: "The list of microsatellites to check in the\\ntumor/normal pair (default:\\nutils/microsatellites.list)"
    save_location: "The location on the filesystem to save the converted\\nvectors and final results (default:\\nCurrent_working_directory/mimsi_results/). WARNING:\\nExisitng files in this directory in the formats\\n*_locations.npy and *_data.npy will be deleted!"
    cores: "Number of cores to utilize in parallel (default: 16)"
    coverage: "Required coverage for both the tumor and the normal.\\nAny coverage in excess of this limit will be randomly\\ndownsampled"
    confidence_interval: "Confidence interval for the estimated MSI Score\\nreported in the tsv output file (default: 0.95)"
    use_attention: "Use attention pooling rather than average pooling to\\naggregate sample embeddings (default: False)"
    tumor_bam: "Tumor bam file for conversion"
    normal_bam: "Matched normal bam file for conversion"
    case_id: "Unique identifier for the single sample/case\\nsubmitted. This will be the filename for any saved\\nresults (default: TestCase)"
    norm_case_id: "Normal case name (default: None)"
    case_list: "Case List for generating sample vectors in bulk, if\\nspecified all other input file args will be ignored"
    name: "name of the run submitted using --case-list, this will\\nbe the filename for any saved results in the tsv\\nformat (default: BATCH)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_confidence_interval = "${in_confidence_interval}"
  }
}