version 1.0

task Lumpyexpress {
  input {
    File? full_bam_cram
    File? split_reads_comma
    File? discordant_reads_comma
    File? indexed_reference_genome
    File? bedpe_file_comma
    File? output_file
    File? bed_file_exclude
    Boolean? output_probability_curves
    Int? minimum_sample_weight
    Float? trim_threshold
    Directory? temp_directory
    Boolean? keep_temporary_files
    File? path_lumpyexpressconfig_filedefault
    Boolean? verbose
  }
  command <<<
    lumpyexpress \
      ~{if defined(full_bam_cram) then ("-B " +  '"' + full_bam_cram + '"') else ""} \
      ~{if defined(split_reads_comma) then ("-S " +  '"' + split_reads_comma + '"') else ""} \
      ~{if defined(discordant_reads_comma) then ("-D " +  '"' + discordant_reads_comma + '"') else ""} \
      ~{if defined(indexed_reference_genome) then ("-R " +  '"' + indexed_reference_genome + '"') else ""} \
      ~{if defined(bedpe_file_comma) then ("-d " +  '"' + bedpe_file_comma + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(bed_file_exclude) then ("-x " +  '"' + bed_file_exclude + '"') else ""} \
      ~{if (output_probability_curves) then "-P" else ""} \
      ~{if defined(minimum_sample_weight) then ("-m " +  '"' + minimum_sample_weight + '"') else ""} \
      ~{if defined(trim_threshold) then ("-r " +  '"' + trim_threshold + '"') else ""} \
      ~{if defined(temp_directory) then ("-T " +  '"' + temp_directory + '"') else ""} \
      ~{if (keep_temporary_files) then "-k" else ""} \
      ~{if defined(path_lumpyexpressconfig_filedefault) then ("-K " +  '"' + path_lumpyexpressconfig_filedefault + '"') else ""} \
      ~{if (verbose) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    full_bam_cram: "full BAM or CRAM file(s) (comma separated) (required)"
    split_reads_comma: "split reads BAM file(s) (comma separated)"
    discordant_reads_comma: "discordant reads BAM files(s) (comma separated)"
    indexed_reference_genome: "indexed reference genome fasta file (recommended for CRAMs)"
    bedpe_file_comma: "bedpe file of depths (comma separated and prefixed by sample:)\\ne.g sample_x:/path/to/sample_x.bedpe,sample_y:/path/to/sample_y.bedpe"
    output_file: "output file [fullBam.bam.vcf]"
    bed_file_exclude: "BED file to exclude"
    output_probability_curves: "output probability curves for each variant"
    minimum_sample_weight: "minimum sample weight for a call [4]"
    trim_threshold: "trim threshold [0]"
    temp_directory: "temp directory [./output_prefix.XXXXXXXXXXXX]"
    keep_temporary_files: "keep temporary files"
    path_lumpyexpressconfig_filedefault: "path to lumpyexpress.config file\\n(default: same directory as lumpyexpress)"
    verbose: "verbose"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}