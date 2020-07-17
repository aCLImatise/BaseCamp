version 1.0

task DellyLr {
  input {
    Boolean? t
    Boolean? y
    Boolean? arg_genome_fasta
    Boolean? arg_file_regions
    Boolean? arg_sv_bcf
    Boolean? _arg_min_mapping_quality
    Boolean? arg_min_clipping
    Boolean? arg_min_separation
    Boolean? arg_max_read
    Boolean? arg_input_vcfbcf
    Boolean? arg_min_mapping_quality_genotyping
    Boolean? arg_gzipped_file
    String generic
  }
  command <<<
    delly lr \
      ~{generic} \
      ~{true="-t" false="" t} \
      ~{true="-y" false="" y} \
      ~{true="-g" false="" arg_genome_fasta} \
      ~{true="-x" false="" arg_file_regions} \
      ~{true="-o" false="" arg_sv_bcf} \
      ~{true="-q" false="" _arg_min_mapping_quality} \
      ~{true="-c" false="" arg_min_clipping} \
      ~{true="-m" false="" arg_min_separation} \
      ~{true="-n" false="" arg_max_read} \
      ~{true="-v" false="" arg_input_vcfbcf} \
      ~{true="-u" false="" arg_min_mapping_quality_genotyping} \
      ~{true="-d" false="" arg_gzipped_file}
  >>>
  parameter_meta {
    t: "[ --svtype ] arg (=ALL)        SV type to compute [DEL, INS, DUP, INV,  BND, ALL]"
    y: "[ --technology ] arg (=ont)    seq. technology [pb, ont]"
    arg_genome_fasta: "[ --genome ] arg               genome fasta file"
    arg_file_regions: "[ --exclude ] arg              file with regions to exclude"
    arg_sv_bcf: "[ --outfile ] arg (=\"sv.bcf\")  SV BCF output file"
    _arg_min_mapping_quality: "[ --mapqual ] arg (=10)        min. mapping quality"
    arg_min_clipping: "[ --minclip ] arg (=25)        min. clipping length"
    arg_min_separation: "[ --minrefsep ] arg (=30)      min. reference separation"
    arg_max_read: "[ --maxreadsep ] arg (=75)     max. read separation"
    arg_input_vcfbcf: "[ --vcffile ] arg              input VCF/BCF file for genotyping"
    arg_min_mapping_quality_genotyping: "[ --geno-qual ] arg (=5)       min. mapping quality for genotyping"
    arg_gzipped_file: "[ --dump ] arg                 gzipped output file for SV-reads"
    generic: ""
  }
}