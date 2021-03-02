version 1.0

task Pash2SAM {
  input {
    Boolean? pash_mappings
    Boolean? fast_q_file
    Boolean? references_equ_nces
    Boolean? bisulfite_seq_flag
    File? sam_file
    Boolean? sample
    Boolean? center
  }
  command <<<
    pash2SAM \
      ~{if (pash_mappings) then "--pashMappings" else ""} \
      ~{if (fast_q_file) then "--fastqFile" else ""} \
      ~{if (references_equ_nces) then "--referenceSequnces" else ""} \
      ~{if (bisulfite_seq_flag) then "--bisulfiteSeqFlag" else ""} \
      ~{if (sam_file) then "--SAMFile" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (center) then "--center" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pash_mappings: "pash mappings file"
    fast_q_file: "FASTQ file for the mapped reads. When using .fa and .qual file, use our utility faqualToFastq.rb"
    references_equ_nces: "file containing the reference sequences and their lengths"
    bisulfite_seq_flag: "converting the mappings of a bisulfite sequencing run"
    sam_file: "output SAM file"
    sample: "sample name"
    center: "center name"
  }
  output {
    File out_stdout = stdout()
    File out_sam_file = "${in_sam_file}"
  }
}