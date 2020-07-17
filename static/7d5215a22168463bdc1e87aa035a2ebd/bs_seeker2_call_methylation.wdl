version 1.0

task BsSeeker2CallMethylation.py {
  input {
    String? bam_output_bsseekeralignpy
    String? db
    String? output_prefix
    Boolean? sorted
    String? wig
    String? cg_map
    String? at_cg_map
    Boolean? rm_sx
    Boolean? rm_ccgg
    Boolean? rm_overlap
    Boolean? txt
    String? read_no
    String? pile_up_maxdepth
  }
  command <<<
    bs_seeker2-call_methylation.py \
      ~{if defined(bam_output_bsseekeralignpy) then ("--input " +  '"' + bam_output_bsseekeralignpy + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(wig) then ("--wig " +  '"' + wig + '"') else ""} \
      ~{if defined(cg_map) then ("--CGmap " +  '"' + cg_map + '"') else ""} \
      ~{if defined(at_cg_map) then ("--ATCGmap " +  '"' + at_cg_map + '"') else ""} \
      ~{true="--rm-SX" false="" rm_sx} \
      ~{true="--rm-CCGG" false="" rm_ccgg} \
      ~{true="--rm-overlap" false="" rm_overlap} \
      ~{true="--txt" false="" txt} \
      ~{if defined(read_no) then ("--read-no " +  '"' + read_no + '"') else ""} \
      ~{if defined(pile_up_maxdepth) then ("--pileup-maxdepth " +  '"' + pile_up_maxdepth + '"') else ""}
  >>>
  parameter_meta {
    bam_output_bsseekeralignpy: "BAM output from bs_seeker2-align.py"
    db: "Path to the reference genome library (generated in preprocessing genome) [Default: /tmp/tmp5qr94fea/bin/bs_utils/reference_genomes]"
    output_prefix: "The output prefix to create ATCGmap and wiggle files. Three files (ATCGmap, CGmap, wig) will be generated if specified. Omit this if only to generate specific format."
    sorted: "Specify when the input bam file is already sorted, the sorting step will be skipped [Default: False]"
    wig: "Filename for wig file. Ex: output.wig, or output.wig.gz. Can be overwritten by \"-o\"."
    cg_map: "Filename for CGmap file. Ex: output.CGmap, or output.CGmap.gz. Can be overwritten by \"-o\"."
    at_cg_map: "Filename for ATCGmap file. Ex: output.ATCGmap, or output.ATCGmap.gz. Can be overwritten by \"-o\"."
    rm_sx: "Removed reads with tag 'XS:i:1', which would be considered as not fully converted by bisulfite treatment [Default: False]"
    rm_ccgg: "Removed sites located in CCGG, avoiding the bias introduced by artificial DNA methylation status 'XS:i:1', which would be considered as not fully converted by bisulfite treatment [Default: False]"
    rm_overlap: "Removed one mate if two mates are overlapped, for paired-end data [Default: False]"
    txt: "When specified, output file will be stored in plain text instead of compressed version (.gz)"
    read_no: "The least number of reads covering one site to be shown in wig file [Default: 1]"
    pile_up_maxdepth: "The max number of read depth can be called for each position. Parameter passing to pysam. Large number costs more time.[Default: 8000]"
  }
}