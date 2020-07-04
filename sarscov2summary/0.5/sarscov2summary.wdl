version 1.0

task Sarscov2summary {
  input {
    String? write_results_here
    String? slac
    String? fel
    String? meme
    String? prime
    String? p_value
    String? coordinates
    String? database
    String? duplicates
    String? maf
    String? evolutionary_annotation
    String? evolutionary_fragment
    String? ma_fs
    String? evolutionary_csv
  }
  command <<<
    sarscov2summary \
      ~{if defined(write_results_here) then ("--output " +  '"' + write_results_here + '"') else ""} \
      ~{if defined(slac) then ("--slac " +  '"' + slac + '"') else ""} \
      ~{if defined(fel) then ("--fel " +  '"' + fel + '"') else ""} \
      ~{if defined(meme) then ("--meme " +  '"' + meme + '"') else ""} \
      ~{if defined(prime) then ("--prime " +  '"' + prime + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""} \
      ~{if defined(coordinates) then ("--coordinates " +  '"' + coordinates + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(duplicates) then ("--duplicates " +  '"' + duplicates + '"') else ""} \
      ~{if defined(maf) then ("--MAF " +  '"' + maf + '"') else ""} \
      ~{if defined(evolutionary_annotation) then ("--evolutionary_annotation " +  '"' + evolutionary_annotation + '"') else ""} \
      ~{if defined(evolutionary_fragment) then ("--evolutionary_fragment " +  '"' + evolutionary_fragment + '"') else ""} \
      ~{if defined(ma_fs) then ("--mafs " +  '"' + ma_fs + '"') else ""} \
      ~{if defined(evolutionary_csv) then ("--evolutionary_csv " +  '"' + evolutionary_csv + '"') else ""}
  >>>
  parameter_meta {
    write_results_here: "Write results here"
    slac: "SLAC results file"
    fel: "FEL results file"
    meme: "MEME results file"
    prime: "PRIME results file"
    p_value: "p-value"
    coordinates: "An alignment with reference sequence (assumed to start with NC)"
    database: "Primary database record to extract sequence information from"
    duplicates: "The JSON file recording compressed sequence duplicates"
    maf: "Also include sites with hapoltype MAF >= this frequency"
    evolutionary_annotation: "If provided use evolutionary likelihood annotation"
    evolutionary_fragment: "Used in conjunction with evolutionary annotation to designate the fragment to look up"
    ma_fs: "If provided, write a CSV file with MAF/p-value tables"
    evolutionary_csv: "If provided, write a CSV file with observed/predicted frequncies"
  }
}