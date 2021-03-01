version 1.0

task Sarscov2summary {
  input {
    String? write_results_here
    File? slac
    File? fel
    File? meme
    File? prime
    String? database
    File? duplicates
    String? maf
    String? evolutionary_fragment
    File? ma_fs
    File? evolutionary_csv
    String p_value
    String frequency
  }
  command <<<
    sarscov2summary \
      ~{p_value} \
      ~{frequency} \
      ~{if defined(write_results_here) then ("--output " +  '"' + write_results_here + '"') else ""} \
      ~{if defined(slac) then ("--slac " +  '"' + slac + '"') else ""} \
      ~{if defined(fel) then ("--fel " +  '"' + fel + '"') else ""} \
      ~{if defined(meme) then ("--meme " +  '"' + meme + '"') else ""} \
      ~{if defined(prime) then ("--prime " +  '"' + prime + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(duplicates) then ("--duplicates " +  '"' + duplicates + '"') else ""} \
      ~{if defined(maf) then ("--MAF " +  '"' + maf + '"') else ""} \
      ~{if defined(evolutionary_fragment) then ("--evolutionary_fragment " +  '"' + evolutionary_fragment + '"') else ""} \
      ~{if defined(ma_fs) then ("--mafs " +  '"' + ma_fs + '"') else ""} \
      ~{if defined(evolutionary_csv) then ("--evolutionary_csv " +  '"' + evolutionary_csv + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_results_here: "Write results here"
    slac: "SLAC results file"
    fel: "FEL results file"
    meme: "MEME results file"
    prime: "PRIME results file"
    database: "Primary database record to extract sequence\\ninformation from"
    duplicates: "The JSON file recording compressed sequence duplicates"
    maf: "Also include sites with hapoltype MAF >= this"
    evolutionary_fragment: "Used in conjunction with evolutionary annotation to\\ndesignate the fragment to look up"
    ma_fs: "If provided, write a CSV file with MAF/p-value tables"
    evolutionary_csv: "If provided, write a CSV file with observed/predicted\\nfrequncies\\n"
    p_value: "-c COORDINATES, --coordinates COORDINATES"
    frequency: "-E EVOLUTIONARY_ANNOTATION, --evolutionary_annotation EVOLUTIONARY_ANNOTATION"
  }
  output {
    File out_stdout = stdout()
  }
}