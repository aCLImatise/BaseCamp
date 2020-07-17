version 1.0

task AnalyzeSplitsSam.py {
  input {
    String? input_file_psl
    String? output_psl_file
    String? clipped_reads_ids
    String? clipped_reads_refs
    Int? clip_min
    Boolean? remove_extra
  }
  command <<<
    analyze_splits_sam.py \
      ~{if defined(input_file_psl) then ("--input " +  '"' + input_file_psl + '"') else ""} \
      ~{if defined(output_psl_file) then ("--output " +  '"' + output_psl_file + '"') else ""} \
      ~{if defined(clipped_reads_ids) then ("--clipped-reads-ids " +  '"' + clipped_reads_ids + '"') else ""} \
      ~{if defined(clipped_reads_refs) then ("--clipped-reads-refs " +  '"' + clipped_reads_refs + '"') else ""} \
      ~{if defined(clip_min) then ("--clip-min " +  '"' + clip_min + '"') else ""} \
      ~{true="--remove-extra" false="" remove_extra}
  >>>
  parameter_meta {
    input_file_psl: "The input file in PSL format."
    output_psl_file: "The output PSL file containing the contigs with the best alignment which must be unique."
    clipped_reads_ids: "The output text file containing ids of reads which have unmapped clippings."
    clipped_reads_refs: "The output text file containing reference ids on which the clipped reads are mapped."
    clip_min: "Minimum size of clipping which will be written in the output given by '--reads-ids'. Default is '10'."
    remove_extra: "It removes from the string of reads ids everything what is after '__' and also '__'. Default is 'False'."
  }
}