version 1.0

task BsSeeker2callMethylationpy {
  input {
    File? bam_output_bsseekeralignpy
    File? db
    String? output_prefix
    Boolean? sorted
    File? wig
    File? cg_map
    File? at_cg_map
    Boolean? rm_sx
    Boolean? rm_ccgg
    Boolean? rm_overlap
    File? txt
    Int? read_no
    Int? pile_up_maxdepth
  }
  command <<<
    bs_seeker2_call_methylation_py \
      ~{if defined(bam_output_bsseekeralignpy) then ("--input " +  '"' + bam_output_bsseekeralignpy + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(wig) then ("--wig " +  '"' + wig + '"') else ""} \
      ~{if defined(cg_map) then ("--CGmap " +  '"' + cg_map + '"') else ""} \
      ~{if defined(at_cg_map) then ("--ATCGmap " +  '"' + at_cg_map + '"') else ""} \
      ~{if (rm_sx) then "--rm-SX" else ""} \
      ~{if (rm_ccgg) then "--rm-CCGG" else ""} \
      ~{if (rm_overlap) then "--rm-overlap" else ""} \
      ~{if (txt) then "--txt" else ""} \
      ~{if defined(read_no) then ("--read-no " +  '"' + read_no + '"') else ""} \
      ~{if defined(pile_up_maxdepth) then ("--pileup-maxdepth " +  '"' + pile_up_maxdepth + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_output_bsseekeralignpy: "BAM output from bs_seeker2-align.py"
    db: "Path to the reference genome library (generated in\\npreprocessing genome) [Default:\\n/usr/local/bin/bs_utils/reference_genomes]"
    output_prefix: "The output prefix to create ATCGmap and wiggle files.\\nThree files (ATCGmap, CGmap, wig) will be generated if\\nspecified. Omit this if only to generate specific\\nformat."
    sorted: "Specify when the input bam file is already sorted, the\\nsorting step will be skipped [Default: False]"
    wig: "Filename for wig file. Ex: output.wig, or\\noutput.wig.gz. Can be overwritten by \\\"-o\\\"."
    cg_map: "Filename for CGmap file. Ex: output.CGmap, or\\noutput.CGmap.gz. Can be overwritten by \\\"-o\\\"."
    at_cg_map: "Filename for ATCGmap file. Ex: output.ATCGmap, or\\noutput.ATCGmap.gz. Can be overwritten by \\\"-o\\\"."
    rm_sx: "Removed reads with tag 'XS:i:1', which would be\\nconsidered as not fully converted by bisulfite\\ntreatment [Default: False]"
    rm_ccgg: "Removed sites located in CCGG, avoiding the bias\\nintroduced by artificial DNA methylation status\\n'XS:i:1', which would be considered as not fully\\nconverted by bisulfite treatment [Default: False]"
    rm_overlap: "Removed one mate if two mates are overlapped, for\\npaired-end data [Default: False]"
    txt: "When specified, output file will be stored in plain\\ntext instead of compressed version (.gz)"
    read_no: "The least number of reads covering one site to be\\nshown in wig file [Default: 1]"
    pile_up_maxdepth: "The max number of read depth can be called for each\\nposition. Parameter passing to pysam. Large number\\ncosts more time.[Default: 8000]"
  }
  output {
    File out_stdout = stdout()
    File out_wig = "${in_wig}"
    File out_cg_map = "${in_cg_map}"
    File out_at_cg_map = "${in_at_cg_map}"
    File out_txt = "${in_txt}"
  }
}