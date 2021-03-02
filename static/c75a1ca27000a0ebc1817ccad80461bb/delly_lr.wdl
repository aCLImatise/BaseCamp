version 1.0

task DellyLr {
  input {
    Boolean? arg_sv_type
    Boolean? y
    Boolean? arg_genome_fasta
    Boolean? arg_file_exclude
    File? arg_sv_bcf
    Boolean? _arg_min_mapping_quality
    Boolean? arg_min_clipping
    Boolean? arg_min_clique
    Boolean? arg_min_reference
    Boolean? arg_max_read
    Boolean? arg_max_reads
    Boolean? arg_min_size
    Boolean? arg_flank_quality
    Boolean? arg_min_mapping_quality_genotyping
    File? arg_gzipped_file
    String generic
  }
  command <<<
    delly lr \
      ~{generic} \
      ~{if (arg_sv_type) then "-t" else ""} \
      ~{if (y) then "-y" else ""} \
      ~{if (arg_genome_fasta) then "-g" else ""} \
      ~{if (arg_file_exclude) then "-x" else ""} \
      ~{if (arg_sv_bcf) then "-o" else ""} \
      ~{if (_arg_min_mapping_quality) then "-q" else ""} \
      ~{if (arg_min_clipping) then "-c" else ""} \
      ~{if (arg_min_clique) then "-z" else ""} \
      ~{if (arg_min_reference) then "-m" else ""} \
      ~{if (arg_max_read) then "-n" else ""} \
      ~{if (arg_max_reads) then "-p" else ""} \
      ~{if (arg_min_size) then "-f" else ""} \
      ~{if (arg_flank_quality) then "-a" else ""} \
      ~{if (arg_min_mapping_quality_genotyping) then "-u" else ""} \
      ~{if (arg_gzipped_file) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/delly:0.8.7--hf3ca161_0"
  }
  parameter_meta {
    arg_sv_type: "[ --svtype ] arg (=ALL)            SV type to compute [DEL, INS, DUP, INV,\\nBND, ALL]"
    y: "[ --technology ] arg (=ont)        seq. technology [pb, ont]"
    arg_genome_fasta: "[ --genome ] arg                   genome fasta file"
    arg_file_exclude: "[ --exclude ] arg                  file with regions to exclude"
    arg_sv_bcf: "[ --outfile ] arg (=\\\"sv.bcf\\\")      SV BCF output file"
    _arg_min_mapping_quality: "[ --mapqual ] arg (=10)            min. mapping quality"
    arg_min_clipping: "[ --minclip ] arg (=25)            min. clipping length"
    arg_min_clique: "[ --min-clique-size ] arg (=2)     min. clique size"
    arg_min_reference: "[ --minrefsep ] arg (=30)          min. reference separation"
    arg_max_read: "[ --maxreadsep ] arg (=75)         max. read separation"
    arg_max_reads: "[ --max-reads ] arg (=5)           max. reads for consensus computation"
    arg_min_size: "[ --flank-size ] arg (=400)        min. flank size"
    arg_flank_quality: "[ --flank-quality ] arg (=0.899999976)\\nmin. flank quality"
    arg_min_mapping_quality_genotyping: "[ --geno-qual ] arg (=5)           min. mapping quality for genotyping"
    arg_gzipped_file: "[ --dump ] arg                     gzipped output file for SV-reads"
    generic: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_sv_bcf = "${in_arg_sv_bcf}"
    File out_arg_gzipped_file = "${in_arg_gzipped_file}"
  }
}