version 1.0

task Anviscriptgetcoveragefrombam {
  input {
    File? bam_file
    String? contig_name
    File? contigs_of_interest
    File? collection_txt
    String? method
    File? output_file_path
    Boolean? skip_contigs_check
  }
  command <<<
    anvi_script_get_coverage_from_bam \
      ~{if defined(bam_file) then ("--bam-file " +  '"' + bam_file + '"') else ""} \
      ~{if defined(contig_name) then ("--contig-name " +  '"' + contig_name + '"') else ""} \
      ~{if defined(contigs_of_interest) then ("--contigs-of-interest " +  '"' + contigs_of_interest + '"') else ""} \
      ~{if defined(collection_txt) then ("--collection-txt " +  '"' + collection_txt + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""} \
      ~{if (skip_contigs_check) then "--skip-contigs-check" else ""}
  >>>
  parameter_meta {
    bam_file: "Sorted and indexed BAM file to analyze."
    contig_name: "The name of a single contig"
    contigs_of_interest: "Provide here a file where each line is a contig name."
    collection_txt: "Provide a collection text file. The first column\\nshould be contig names and the second column should be\\nthe bin to which the contig belongs. If you have a\\ncollection from a profile database, you can export it\\nin this format with anvi-export-collection."
    method: "If pos, each nucleotide position will be reported\\n(valid for OPTION #1, #2, #3). If contig, report\\ncontains contig averages (valid for OPTION #2, #3). If\\nbin, report contains bin averages (valid for OPTION\\n#3)."
    output_file_path: "Output tab-delimited file path. Will overwrite\\nexisting files."
    skip_contigs_check: "Checking to see that your collection text or contigs\\nof interest file has correct names can take a really\\nlong time if you have a large enough number of\\ncontigs. Use this flag to forego checking, and find\\nout the hard way.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}