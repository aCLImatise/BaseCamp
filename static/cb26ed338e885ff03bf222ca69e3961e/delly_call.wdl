version 1.0

task DellyCall {
  input {
    Boolean? t
    Boolean? arg_genome_fasta
    Boolean? arg_file_regions
    Boolean? arg_sv_bcf
    Boolean? arg_min_pairedend
    Boolean? arg_min_pe_quality
    Boolean? arg_insert_size
    Boolean? arg_min_clipping
    Boolean? arg_min_separation
    Boolean? arg_max_read
    Boolean? arg_input_vcfbcf
    Boolean? arg_min_mapping_quality
    Boolean? arg_gzipped_file
    String generic
  }
  command <<<
    delly call \
      ~{generic} \
      ~{true="-t" false="" t} \
      ~{true="-g" false="" arg_genome_fasta} \
      ~{true="-x" false="" arg_file_regions} \
      ~{true="-o" false="" arg_sv_bcf} \
      ~{true="-q" false="" arg_min_pairedend} \
      ~{true="-r" false="" arg_min_pe_quality} \
      ~{true="-s" false="" arg_insert_size} \
      ~{true="-c" false="" arg_min_clipping} \
      ~{true="-m" false="" arg_min_separation} \
      ~{true="-n" false="" arg_max_read} \
      ~{true="-v" false="" arg_input_vcfbcf} \
      ~{true="-u" false="" arg_min_mapping_quality} \
      ~{true="-d" false="" arg_gzipped_file}
  >>>
  parameter_meta {
    t: "[ --svtype ] arg (=ALL)        SV type to compute [DEL, INS, DUP, INV,  BND, ALL]"
    arg_genome_fasta: "[ --genome ] arg               genome fasta file"
    arg_file_regions: "[ --exclude ] arg              file with regions to exclude"
    arg_sv_bcf: "[ --outfile ] arg (=\"sv.bcf\")  SV BCF output file"
    arg_min_pairedend: "[ --map-qual ] arg (=1)        min. paired-end (PE) mapping quality"
    arg_min_pe_quality: "[ --qual-tra ] arg (=20)       min. PE quality for translocation"
    arg_insert_size: "[ --mad-cutoff ] arg (=9)      insert size cutoff, median+s*MAD (deletions only)"
    arg_min_clipping: "[ --minclip ] arg (=25)        min. clipping length"
    arg_min_separation: "[ --minrefsep ] arg (=25)      min. reference separation"
    arg_max_read: "[ --maxreadsep ] arg (=40)     max. read separation"
    arg_input_vcfbcf: "[ --vcffile ] arg              input VCF/BCF file for genotyping"
    arg_min_mapping_quality: "[ --geno-qual ] arg (=5)       min. mapping quality for genotyping"
    arg_gzipped_file: "[ --dump ] arg                 gzipped output file for SV-reads (optional)"
    generic: ""
  }
}