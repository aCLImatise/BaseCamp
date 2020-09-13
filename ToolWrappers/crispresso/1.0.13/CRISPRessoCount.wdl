version 1.0

task CRISPRessoCount {
  input {
    String? utility
    File? fast_q
    Int? min_average_read_quality
    Int? min_single_bp_quality
    String? trac_rrna
    File? sg_rna_file
    String? name
    Directory? output_folder
    Int? guide_length
    Boolean? keep_intermediate
  }
  command <<<
    CRISPRessoCount \
      ~{if defined(utility) then ("-Utility " +  '"' + utility + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(min_average_read_quality) then ("--min_average_read_quality " +  '"' + min_average_read_quality + '"') else ""} \
      ~{if defined(min_single_bp_quality) then ("--min_single_bp_quality " +  '"' + min_single_bp_quality + '"') else ""} \
      ~{if defined(trac_rrna) then ("--tracrRNA " +  '"' + trac_rrna + '"') else ""} \
      ~{if defined(sg_rna_file) then ("--sgRNA_file " +  '"' + sg_rna_file + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(guide_length) then ("--guide_length " +  '"' + guide_length + '"') else ""} \
      ~{if (keep_intermediate) then "--keep_intermediate" else ""}
  >>>
  parameter_meta {
    utility: "perform sgRNA enumeration from deep sequencing data-\\n)                                             )"
    fast_q: "fastq file (default: Fastq filename)"
    min_average_read_quality: "Minimum average quality score (phred33) to keep a read\\n(default: 0)"
    min_single_bp_quality: "Minimum single bp score (phred33) to keep a read\\n(default: 0)"
    trac_rrna: "tracr RNA sequence in each read, for single end reads\\nit may necessary to change this parameter if the\\ntracRNA is not fully sequenced, for example to\\nGTTTTAGAG (default: GTTTTAGAGCTAGAAATAGC)"
    sg_rna_file: "sgRNA description file. The format required is one\\nsgRNA per line, for example:AAAAAGATGATTTTTTTCTC\\nAAAATATTTTTATCCCCTAA (default: None)"
    name: "Output name (default: )"
    output_folder: ""
    guide_length: "Lenght in bp to extract the sgRNA upstream of the\\ntracrRNA sequence (default: 20)"
    keep_intermediate: "Keep all the intermediate files (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}