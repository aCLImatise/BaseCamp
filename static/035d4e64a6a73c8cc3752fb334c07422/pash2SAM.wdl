version 1.0

task Pash2SAM {
  input {
    Boolean? pash_mappings
    Boolean? fast_q_file
    Boolean? references_equ_nces
    Boolean? bisulfite_seq_flag
    Boolean? sam_file
    Boolean? sample
    Boolean? center
  }
  command <<<
    pash2SAM \
      ~{true="--pashMappings" false="" pash_mappings} \
      ~{true="--fastqFile" false="" fast_q_file} \
      ~{true="--referenceSequnces" false="" references_equ_nces} \
      ~{true="--bisulfiteSeqFlag" false="" bisulfite_seq_flag} \
      ~{true="--SAMFile" false="" sam_file} \
      ~{true="--sample" false="" sample} \
      ~{true="--center" false="" center}
  >>>
  parameter_meta {
    pash_mappings: "| -p    pash mappings file"
    fast_q_file: "| -f    FASTQ file for the mapped reads. When using .fa and .qual file, use our utility faqualToFastq.rb"
    references_equ_nces: "| -r    file containing the reference sequences and their lengths"
    bisulfite_seq_flag: "| -B    converting the mappings of a bisulfite sequencing run"
    sam_file: "| -S    output SAM file"
    sample: "| -s    sample name"
    center: "| -C    center name"
  }
}