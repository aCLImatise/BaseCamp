version 1.0

task Sarscov2summary {
  input {
    String? write_results_here
    File? slac
    File? fel
    File? meme
    File? prime
    String? var_5
    String? database
    File? duplicates
    String? maf
    String? evolutionary_fragment
    File? ma_fs
    File? evolutionary_csv
    String coordinates__coordinates
    String frequency
  }
  command <<<
    sarscov2summary \
      ~{coordinates__coordinates} \
      ~{frequency} \
      ~{if defined(write_results_here) then ("--output " +  '"' + write_results_here + '"') else ""} \
      ~{if defined(slac) then ("--slac " +  '"' + slac + '"') else ""} \
      ~{if defined(fel) then ("--fel " +  '"' + fel + '"') else ""} \
      ~{if defined(meme) then ("--meme " +  '"' + meme + '"') else ""} \
      ~{if defined(prime) then ("--prime " +  '"' + prime + '"') else ""} \
      ~{if defined(var_5) then ("--pvalue " +  '"' + var_5 + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(duplicates) then ("--duplicates " +  '"' + duplicates + '"') else ""} \
      ~{if defined(maf) then ("--MAF " +  '"' + maf + '"') else ""} \
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
    var_5: ""
    database: "Primary database record to extract sequence\\ninformation from"
    duplicates: "The JSON file recording compressed sequence duplicates"
    maf: "Also include sites with hapoltype MAF >= this"
    evolutionary_fragment: "Used in conjunction with evolutionary annotation to\\ndesignate the fragment to look up"
    ma_fs: "If provided, write a CSV file with MAF/p-value tables"
    evolutionary_csv: "If provided, write a CSV file with observed/predicted\\nfrequncies\\n"
    coordinates__coordinates: "-c COORDINATES, --coordinates COORDINATES"
    frequency: "-E EVOLUTIONARY_ANNOTATION, --evolutionary_annotation EVOLUTIONARY_ANNOTATION"
  }
  output {
    File out_stdout = stdout()
  }
}