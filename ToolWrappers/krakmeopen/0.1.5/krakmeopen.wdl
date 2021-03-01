version 1.0

task Krakmeopen {
  input {
    File? kraken_readbyread_classifications
    File? input_pickle
    File? file_write_output
    File? output_pickle
    File? km_er_tally_table
    File? names
    File? tax_id_file
  }
  command <<<
    krakmeopen \
      ~{if defined(kraken_readbyread_classifications) then ("--input " +  '"' + kraken_readbyread_classifications + '"') else ""} \
      ~{if defined(input_pickle) then ("--input_pickle " +  '"' + input_pickle + '"') else ""} \
      ~{if defined(file_write_output) then ("--output " +  '"' + file_write_output + '"') else ""} \
      ~{if defined(output_pickle) then ("--output_pickle " +  '"' + output_pickle + '"') else ""} \
      ~{if defined(km_er_tally_table) then ("--kmer_tally_table " +  '"' + km_er_tally_table + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(tax_id_file) then ("--tax_id_file " +  '"' + tax_id_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krakmeopen:0.1.5--pyh3252c3a_0"
  }
  parameter_meta {
    kraken_readbyread_classifications: "Kraken2 read-by-read classifications file."
    input_pickle: "A pickle file containing kmer tallies, produced with"
    file_write_output: "The file to write the quality metrics output to."
    output_pickle: "The pickle file to write kmer tallies to. Use this\\nargument to supress calculation of quality metrics and\\nonly output kmer counts to a pickled file. Input the\\npickled file using --input_pickle."
    km_er_tally_table: "File to output the complete kmer tally table for each\\ntax ID to. Optional."
    names: "NCBI style taxonomy names dump file (names.dmp)."
    tax_id_file: "Supply multiple taxonomic IDs at once. A textfile with\\none taxonomic ID per line. Calculate quality metrics\\nfor the clades rooted at the taxonomic IDs in the\\nfile."
  }
  output {
    File out_stdout = stdout()
    File out_file_write_output = "${in_file_write_output}"
    File out_km_er_tally_table = "${in_km_er_tally_table}"
  }
}