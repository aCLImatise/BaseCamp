version 1.0

task DellyCall {
  input {
    Boolean? arg_sv_type
    Boolean? arg_genome_fasta
    Boolean? arg_file_regions
    File? arg_sv_bcf
    Boolean? arg_min_pairedend
    Boolean? arg_min_pe
    Boolean? arg_insert_size
    Boolean? arg_min_clipping
    Boolean? arg_min_pesr
    Boolean? arg_min_reference
    Boolean? arg_max_read
    Boolean? arg_input_vcfbcf
    Boolean? arg_min_mapping
    File? arg_gzipped_file
    String generic
  }
  command <<<
    delly call \
      ~{generic} \
      ~{if (arg_sv_type) then "-t" else ""} \
      ~{if (arg_genome_fasta) then "-g" else ""} \
      ~{if (arg_file_regions) then "-x" else ""} \
      ~{if (arg_sv_bcf) then "-o" else ""} \
      ~{if (arg_min_pairedend) then "-q" else ""} \
      ~{if (arg_min_pe) then "-r" else ""} \
      ~{if (arg_insert_size) then "-s" else ""} \
      ~{if (arg_min_clipping) then "-c" else ""} \
      ~{if (arg_min_pesr) then "-z" else ""} \
      ~{if (arg_min_reference) then "-m" else ""} \
      ~{if (arg_max_read) then "-n" else ""} \
      ~{if (arg_input_vcfbcf) then "-v" else ""} \
      ~{if (arg_min_mapping) then "-u" else ""} \
      ~{if (arg_gzipped_file) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/delly:0.8.7--hf3ca161_0"
  }
  parameter_meta {
    arg_sv_type: "[ --svtype ] arg (=ALL)         SV type to compute [DEL, INS, DUP, INV,\\nBND, ALL]"
    arg_genome_fasta: "[ --genome ] arg                genome fasta file"
    arg_file_regions: "[ --exclude ] arg               file with regions to exclude"
    arg_sv_bcf: "[ --outfile ] arg (=\\\"sv.bcf\\\")   SV BCF output file"
    arg_min_pairedend: "[ --map-qual ] arg (=1)         min. paired-end (PE) mapping quality"
    arg_min_pe: "[ --qual-tra ] arg (=20)        min. PE quality for translocation"
    arg_insert_size: "[ --mad-cutoff ] arg (=9)       insert size cutoff, median+s*MAD\\n(deletions only)"
    arg_min_clipping: "[ --minclip ] arg (=25)         min. clipping length"
    arg_min_pesr: "[ --min-clique-size ] arg (=2)  min. PE/SR clique size"
    arg_min_reference: "[ --minrefsep ] arg (=25)       min. reference separation"
    arg_max_read: "[ --maxreadsep ] arg (=40)      max. read separation"
    arg_input_vcfbcf: "[ --vcffile ] arg               input VCF/BCF file for genotyping"
    arg_min_mapping: "[ --geno-qual ] arg (=5)        min. mapping quality for genotyping"
    arg_gzipped_file: "[ --dump ] arg                  gzipped output file for SV-reads\\n(optional)\\n"
    generic: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_sv_bcf = "${in_arg_sv_bcf}"
    File out_arg_gzipped_file = "${in_arg_gzipped_file}"
  }
}