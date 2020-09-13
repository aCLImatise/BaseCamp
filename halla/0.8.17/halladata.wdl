version 1.0

task Halladata {
  input {
    Boolean? verbose
    Int? features
    Int? samples
    Int? clusters
    String? association
    String? distribution
    Float? noise_between
    Float? noise_within
    Directory? the_output_directory
    String? structure
    String? cluster_percentage
  }
  command <<<
    halladata \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(association) then ("--association " +  '"' + association + '"') else ""} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""} \
      ~{if defined(noise_between) then ("--noise-between " +  '"' + noise_between + '"') else ""} \
      ~{if defined(noise_within) then ("--noise-within " +  '"' + noise_within + '"') else ""} \
      ~{if defined(the_output_directory) then ("--output " +  '"' + the_output_directory + '"') else ""} \
      ~{if defined(structure) then ("--structure " +  '"' + structure + '"') else ""} \
      ~{if defined(cluster_percentage) then ("--cluster-percentage " +  '"' + cluster_percentage + '"') else ""}
  >>>
  parameter_meta {
    verbose: "additional output is printed"
    features: "number of features in the input file D*N, Rows: D features and columns: N samples"
    samples: "number of samples in the input file D*N, Rows: D features and columns: N samples"
    clusters: "number of blocks, default = min(number_features/2.0, math.log(number_features,2)*1.5)"
    association: "association type [sine, parabola, log, line, L, step, happy_face, default =parabola]"
    distribution: "Distribution [normal, uniform, default =uniform]"
    noise_between: "noise between associated blocks[0 is no noise, 1 is complete noise, default =0.25]"
    noise_within: "noise within blocks[0 is no noise, 1 is complete noise, default =0.25]"
    the_output_directory: "the output directory"
    structure: "structure [balanced, imbalanced, default =balanced]"
    cluster_percentage: "structure [balanced, imbalanced, default =balanced]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_the_output_directory = "${in_the_output_directory}"
  }
}