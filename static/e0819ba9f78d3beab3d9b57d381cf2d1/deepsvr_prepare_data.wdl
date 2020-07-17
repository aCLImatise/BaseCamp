version 1.0

task DeepsvrPrepareData {
  input {
    Boolean? header
    Boolean? skip_bam_read_count
    String? samples_file_path
    String? output_dir_path
  }
  command <<<
    deepsvr prepare-data \
      ~{true="--header" false="" header} \
      ~{true="--skip_bam_readcount" false="" skip_bam_read_count} \
      ~{if defined(samples_file_path) then ("--samples-file-path " +  '"' + samples_file_path + '"') else ""} \
      ~{if defined(output_dir_path) then ("--output-dir-path " +  '"' + output_dir_path + '"') else ""}
  >>>
  parameter_meta {
    header: "/ --no-header          Specify whether header is present in sample file"
    skip_bam_read_count: "/ --no-skip_bam_readcount If bam readcount files already exist in output directory as a result of a prior run of the prepare_data command, skip the bam- readcount step"
    samples_file_path: "File path of tsv file with sample information. File shouldhave the following columns in order: sample_name, tumor_bam_path, normal_bam_path, manual_review_file_path, reviewer, solid_tumor, reference_genome_fasta_file_path.If the reviewer is specified in the manual review file or not available for the dataset leave the column blank.The manual review file should have the following columnsin order: chromosome, start, stop, reference, variant,call, tag, notes, reviewer. For the manual review filethe reviewer column is optional. The solid tumor column should be 0 or 1, 0 denotes a blood based tumor and 1 a solid tumor. Labels need to matchabove."
    output_dir_path: "Specify output directory: Readcount files and compressed pandas dataframe will be output here (default:~/training_data)"
  }
}