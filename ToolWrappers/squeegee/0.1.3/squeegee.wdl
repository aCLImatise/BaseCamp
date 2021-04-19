version 1.0

task Squeegee {
  input {
    Int? num_core
    Int? min_prevalence
    Int? min_score
    Int? min_align
    String? stacked_idx
    String metadata
    String kraken_db
    String squeegee_output_directory
  }
  command <<<
    squeegee \
      ~{metadata} \
      ~{kraken_db} \
      ~{squeegee_output_directory} \
      ~{if defined(num_core) then ("--numcore " +  '"' + num_core + '"') else ""} \
      ~{if defined(min_prevalence) then ("--min-prevalence " +  '"' + min_prevalence + '"') else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{if defined(stacked_idx) then ("--stacked-idx " +  '"' + stacked_idx + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/squeegee:0.1.3--hdfd78af_0"
  }
  parameter_meta {
    num_core: "Number of threads."
    min_prevalence: "Minimum prevalence threshold for a species to be\\nindentified as a contaminant species."
    min_score: "Minimum contaminant score threshold for a species to\\nbe indentified as a contaminant species."
    min_align: "Minimum breadth of genome coverge threshold for a\\nspecies to be indentified as a contaminant species."
    stacked_idx: "Index to determine whether or not aligned reads have\\nbeen stacked in small region."
    metadata: "input matadata in txt format"
    kraken_db: "directory of kraken database"
    squeegee_output_directory: "squeegee output directory"
  }
  output {
    File out_stdout = stdout()
  }
}