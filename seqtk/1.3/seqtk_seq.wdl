version 1.0

task SeqtkSeq {
  input {
    Int? mask_bases_lower
    Int? mask_bases_higher
    String? masked_bases_converted
    Int? number_residues_line
    Int? quality_shift_gives
    Int? random_seed_effective
    Float? sample_float_fraction
    File? mask_regions_bed
    Int? drop_sequences_shorter
    String? fake_fastq_quality
    Boolean? mask_complement_region
    Boolean? reverse_complement
    Boolean? force_fasta_quality
    Boolean? drop_comments_header
    Boolean? drop_sequences_containing
    Boolean? output_n_
    Boolean? output_n_reads
    Boolean? shift_quality_by
    Boolean? convert_bases_uppercases
    Boolean? strip_white_spaces
    String in_dot_fq
  }
  command <<<
    seqtk seq \
      ~{in_dot_fq} \
      ~{if defined(mask_bases_lower) then ("-q " +  '"' + mask_bases_lower + '"') else ""} \
      ~{if defined(mask_bases_higher) then ("-X " +  '"' + mask_bases_higher + '"') else ""} \
      ~{if defined(masked_bases_converted) then ("-n " +  '"' + masked_bases_converted + '"') else ""} \
      ~{if defined(number_residues_line) then ("-l " +  '"' + number_residues_line + '"') else ""} \
      ~{if defined(quality_shift_gives) then ("-Q " +  '"' + quality_shift_gives + '"') else ""} \
      ~{if defined(random_seed_effective) then ("-s " +  '"' + random_seed_effective + '"') else ""} \
      ~{if defined(sample_float_fraction) then ("-f " +  '"' + sample_float_fraction + '"') else ""} \
      ~{if defined(mask_regions_bed) then ("-M " +  '"' + mask_regions_bed + '"') else ""} \
      ~{if defined(drop_sequences_shorter) then ("-L " +  '"' + drop_sequences_shorter + '"') else ""} \
      ~{if defined(fake_fastq_quality) then ("-F " +  '"' + fake_fastq_quality + '"') else ""} \
      ~{true="-c" false="" mask_complement_region} \
      ~{true="-r" false="" reverse_complement} \
      ~{true="-A" false="" force_fasta_quality} \
      ~{true="-C" false="" drop_comments_header} \
      ~{true="-N" false="" drop_sequences_containing} \
      ~{true="-1" false="" output_n_} \
      ~{true="-2" false="" output_n_reads} \
      ~{true="-V" false="" shift_quality_by} \
      ~{true="-U" false="" convert_bases_uppercases} \
      ~{true="-S" false="" strip_white_spaces}
  >>>
  parameter_meta {
    mask_bases_lower: "mask bases with quality lower than INT [0]"
    mask_bases_higher: "mask bases with quality higher than INT [255]"
    masked_bases_converted: "masked bases converted to CHAR; 0 for lowercase [0]"
    number_residues_line: "number of residues per line; 0 for 2^32-1 [0]"
    quality_shift_gives: "quality shift: ASCII-INT gives base quality [33]"
    random_seed_effective: "random seed (effective with -f) [11]"
    sample_float_fraction: "sample FLOAT fraction of sequences [1]"
    mask_regions_bed: "mask regions in BED or name list FILE [null]"
    drop_sequences_shorter: "drop sequences with length shorter than INT [0]"
    fake_fastq_quality: "fake FASTQ quality []"
    mask_complement_region: "mask complement region (effective with -M)"
    reverse_complement: "reverse complement"
    force_fasta_quality: "force FASTA output (discard quality)"
    drop_comments_header: "drop comments at the header lines"
    drop_sequences_containing: "drop sequences containing ambiguous bases"
    output_n_: "output the 2n-1 reads only"
    output_n_reads: "output the 2n reads only"
    shift_quality_by: "shift quality by '(-Q) - 33'"
    convert_bases_uppercases: "convert all bases to uppercases"
    strip_white_spaces: "strip of white spaces in sequences"
    in_dot_fq: ""
  }
}