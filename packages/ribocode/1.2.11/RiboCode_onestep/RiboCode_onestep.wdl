version 1.0

task RiboCodeOnestep {
  input {
    File? gtf
    File? fast_a
    File? rpf_mapping_file
    File? input_file
    String? stranded
    Int? minimum_length
    Int? maximum_length
    Int? frame_zero_percent
    String? longest_orf
    Float? pval_cut_off
    String? start_codon
    String? alt_start_codons
    String? stop_codon
    Int? transl_table
    Int? min_aa_length
    File? output_name
    File? output_gtf
    File? output_bed
  }
  command <<<
    RiboCode_onestep \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(rpf_mapping_file) then ("--rpf_mapping_file " +  '"' + rpf_mapping_file + '"') else ""} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""} \
      ~{if defined(minimum_length) then ("--minimum-length " +  '"' + minimum_length + '"') else ""} \
      ~{if defined(maximum_length) then ("--maximum-length " +  '"' + maximum_length + '"') else ""} \
      ~{if defined(frame_zero_percent) then ("--frame0_percent " +  '"' + frame_zero_percent + '"') else ""} \
      ~{if defined(longest_orf) then ("--longest-orf " +  '"' + longest_orf + '"') else ""} \
      ~{if defined(pval_cut_off) then ("--pval-cutoff " +  '"' + pval_cut_off + '"') else ""} \
      ~{if defined(start_codon) then ("--start_codon " +  '"' + start_codon + '"') else ""} \
      ~{if defined(alt_start_codons) then ("--alt_start_codons " +  '"' + alt_start_codons + '"') else ""} \
      ~{if defined(stop_codon) then ("--stop_codon " +  '"' + stop_codon + '"') else ""} \
      ~{if defined(transl_table) then ("--transl_table " +  '"' + transl_table + '"') else ""} \
      ~{if defined(min_aa_length) then ("--min-AA-length " +  '"' + min_aa_length + '"') else ""} \
      ~{if defined(output_name) then ("--output-name " +  '"' + output_name + '"') else ""} \
      ~{if (output_gtf) then "--output-gtf" else ""} \
      ~{if (output_bed) then "--output-bed" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribocode:1.2.11--pyh145b6a8_1"
  }
  parameter_meta {
    gtf: "Default, suitable for GENCODE and ENSEMBL GTF file,\\nplease refer: https://en.wikipedia.org/wiki/GENCODE"
    fast_a: "The genome sequences file in fasta format."
    rpf_mapping_file: "ribo-seq BAM/SAM file aligned to the transcriptome."
    input_file: "the file list the ribo-seq BAM/SAM files aligned to\\nthe transcriptome."
    stranded: "whether the data is strand-specific, reverse means\\nreversed strand interpretation.(default: yes)"
    minimum_length: "minimum read length for metaplots analysis, default 24"
    maximum_length: "maximum read length for metaplots analysis, default 36"
    frame_zero_percent: "proportion threshold of reads in frame0. For\\nautomatically predicting P-site location, default 0.65"
    longest_orf: "Default: yes, the region from most distal AUG to stop\\nwas defined as an ORF. If set to no , the position of\\nstart codon will be automatically determined by\\nprogram."
    pval_cut_off: "P-value cutoff for ORF filtering, default 0.05"
    start_codon: "The canonical start codon. default: ATG"
    alt_start_codons: "The alternative start codon, such as CTG,GTG, default:\\nNone. Multiple codons should be separated by comma."
    stop_codon: "Stop codon, default: TAA,TAG,TGA"
    transl_table: "ORF translation table(Default: 1). Assign the correct\\ngenetic code based on your organism, [please refer: ht\\ntps://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\\n]"
    min_aa_length: "The minimal length of predicted peptides,default 20"
    output_name: "output file name, default: final_result"
    output_gtf: "output the gtf file of predicted ORFs"
    output_bed: "output the bed file of predicted ORFs"
  }
  output {
    File out_stdout = stdout()
    File out_output_name = "${in_output_name}"
    File out_output_gtf = "${in_output_gtf}"
    File out_output_bed = "${in_output_bed}"
  }
}