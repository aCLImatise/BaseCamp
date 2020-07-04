version 1.0

task AnviScriptGetCoverageFromBam {
  input {
    String? bam_file
    String? contig_name
    String? contigs_of_interest
    String? collection_txt
    String? method
    String? output_tabdelimited_file
    Boolean? skip_contigs_check
  }
  command <<<
    anvi-script-get-coverage-from-bam \
      ~{if defined(bam_file) then ("--bam-file " +  '"' + bam_file + '"') else ""} \
      ~{if defined(contig_name) then ("--contig-name " +  '"' + contig_name + '"') else ""} \
      ~{if defined(contigs_of_interest) then ("--contigs-of-interest " +  '"' + contigs_of_interest + '"') else ""} \
      ~{if defined(collection_txt) then ("--collection-txt " +  '"' + collection_txt + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(output_tabdelimited_file) then ("--output " +  '"' + output_tabdelimited_file + '"') else ""} \
      ~{true="--skip-contigs-check" false="" skip_contigs_check}
  >>>
  parameter_meta {
    bam_file: "Sorted and indexed BAM file to analyze."
    contig_name: "The name of a single contig"
    contigs_of_interest: "Provide here a file where each line is a contig name."
    collection_txt: "Provide a collection text file. The first column should be contig names and the second column should be the bin to which the contig belongs. If you have a collection from a profile database, you can export it in this format with anvi-export-collection."
    method: "If pos, each nucleotide position will be reported (valid for OPTION #1, #2, #3). If contig, report contains contig averages (valid for OPTION #2, #3). If bin, report contains bin averages (valid for OPTION #3)."
    output_tabdelimited_file: "Output tab-delimited file path. Will overwrite existing files."
    skip_contigs_check: "Checking to see that your collection text or contigs of interest file has correct names can take a really long time if you have a large enough number of contigs. Use this flag to forego checking, and find out the hard way."
  }
}