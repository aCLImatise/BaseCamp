version 1.0

task DellyLr {
  input {
    Boolean? arg_sv_type
    Boolean? y
    Boolean? arg_genome_fasta
    Boolean? arg_file_regions
    File? arg_sv_file
    Boolean? arg_min_quality
    Boolean? arg_min_length
    Boolean? arg_min_reference
    Boolean? arg_max_read
    Boolean? arg_input_file
    Boolean? arg_min_mapping
    File? arg_gzipped_file
    String generic
  }
  command <<<
    delly lr \
      ~{generic} \
      ~{if (arg_sv_type) then "-t" else ""} \
      ~{if (y) then "-y" else ""} \
      ~{if (arg_genome_fasta) then "-g" else ""} \
      ~{if (arg_file_regions) then "-x" else ""} \
      ~{if (arg_sv_file) then "-o" else ""} \
      ~{if (arg_min_quality) then "-q" else ""} \
      ~{if (arg_min_length) then "-c" else ""} \
      ~{if (arg_min_reference) then "-m" else ""} \
      ~{if (arg_max_read) then "-n" else ""} \
      ~{if (arg_input_file) then "-v" else ""} \
      ~{if (arg_min_mapping) then "-u" else ""} \
      ~{if (arg_gzipped_file) then "-d" else ""}
  >>>
  parameter_meta {
    arg_sv_type: "[ --svtype ] arg (=ALL)        SV type to compute [DEL, INS, DUP, INV,\\nBND, ALL]"
    y: "[ --technology ] arg (=ont)    seq. technology [pb, ont]"
    arg_genome_fasta: "[ --genome ] arg               genome fasta file"
    arg_file_regions: "[ --exclude ] arg              file with regions to exclude"
    arg_sv_file: "[ --outfile ] arg (=\\\"sv.bcf\\\")  SV BCF output file"
    arg_min_quality: "[ --mapqual ] arg (=10)        min. mapping quality"
    arg_min_length: "[ --minclip ] arg (=25)        min. clipping length"
    arg_min_reference: "[ --minrefsep ] arg (=30)      min. reference separation"
    arg_max_read: "[ --maxreadsep ] arg (=75)     max. read separation"
    arg_input_file: "[ --vcffile ] arg              input VCF/BCF file for genotyping"
    arg_min_mapping: "[ --geno-qual ] arg (=5)       min. mapping quality for genotyping"
    arg_gzipped_file: "[ --dump ] arg                 gzipped output file for SV-reads"
    generic: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_sv_file = "${in_arg_sv_file}"
    File out_arg_gzipped_file = "${in_arg_gzipped_file}"
  }
}