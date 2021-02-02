version 1.0

task RibotishPredict {
  input {
    String? tis_enriched_seperated
    String? ordinary_riboseq_bam
    File? gene_annotation_file_orf
    File? genome_fasta_file
    File? output_result_file
    Int? only_test_input
    File? gene_format
    String? tis_para
    String? ribo_para
    Int? n_parts
    File? gene_file_known
    File? output_tis_background
    File? input_background_estimation
    String? trans_profile
    String? in_profile
    File? chr_map
    String? all_result
    Boolean? alt
    String? alt_codons
    Boolean? tis_two_ribo
    Int? harr_width
    Boolean? enrich_test
    Int? min_aalen
    String? gene_filter
    Float? tp_th
    Float? fp_th
    Int? min_pth
    String? fsp_th
    String? fsq_th
    Boolean? frame_local_best
    Boolean? frame_best
    Boolean? longest
    Boolean? seq
    Boolean? aa_seq
    Boolean? blocks
    Int? max_nh
    Int? min_mapq
    Boolean? secondary
    Boolean? paired
    Boolean? no_compatible
    Int? number_of_processes
    Boolean? verbose
    String provided
    String junctions
  }
  command <<<
    ribotish predict \
      ~{provided} \
      ~{junctions} \
      ~{if defined(tis_enriched_seperated) then ("-t " +  '"' + tis_enriched_seperated + '"') else ""} \
      ~{if defined(ordinary_riboseq_bam) then ("-b " +  '"' + ordinary_riboseq_bam + '"') else ""} \
      ~{if defined(gene_annotation_file_orf) then ("-g " +  '"' + gene_annotation_file_orf + '"') else ""} \
      ~{if defined(genome_fasta_file) then ("-f " +  '"' + genome_fasta_file + '"') else ""} \
      ~{if defined(output_result_file) then ("-o " +  '"' + output_result_file + '"') else ""} \
      ~{if defined(only_test_input) then ("-i " +  '"' + only_test_input + '"') else ""} \
      ~{if defined(gene_format) then ("--geneformat " +  '"' + gene_format + '"') else ""} \
      ~{if defined(tis_para) then ("--tispara " +  '"' + tis_para + '"') else ""} \
      ~{if defined(ribo_para) then ("--ribopara " +  '"' + ribo_para + '"') else ""} \
      ~{if defined(n_parts) then ("--nparts " +  '"' + n_parts + '"') else ""} \
      ~{if defined(gene_file_known) then ("-a " +  '"' + gene_file_known + '"') else ""} \
      ~{if defined(output_tis_background) then ("-e " +  '"' + output_tis_background + '"') else ""} \
      ~{if defined(input_background_estimation) then ("-s " +  '"' + input_background_estimation + '"') else ""} \
      ~{if defined(trans_profile) then ("--transprofile " +  '"' + trans_profile + '"') else ""} \
      ~{if defined(in_profile) then ("--inprofile " +  '"' + in_profile + '"') else ""} \
      ~{if defined(chr_map) then ("--chrmap " +  '"' + chr_map + '"') else ""} \
      ~{if defined(all_result) then ("--allresult " +  '"' + all_result + '"') else ""} \
      ~{if (alt) then "--alt" else ""} \
      ~{if defined(alt_codons) then ("--altcodons " +  '"' + alt_codons + '"') else ""} \
      ~{if (tis_two_ribo) then "--tis2ribo" else ""} \
      ~{if defined(harr_width) then ("--harrwidth " +  '"' + harr_width + '"') else ""} \
      ~{if (enrich_test) then "--enrichtest" else ""} \
      ~{if defined(min_aalen) then ("--minaalen " +  '"' + min_aalen + '"') else ""} \
      ~{if defined(gene_filter) then ("--genefilter " +  '"' + gene_filter + '"') else ""} \
      ~{if defined(tp_th) then ("--tpth " +  '"' + tp_th + '"') else ""} \
      ~{if defined(fp_th) then ("--fpth " +  '"' + fp_th + '"') else ""} \
      ~{if defined(min_pth) then ("--minpth " +  '"' + min_pth + '"') else ""} \
      ~{if defined(fsp_th) then ("--fspth " +  '"' + fsp_th + '"') else ""} \
      ~{if defined(fsq_th) then ("--fsqth " +  '"' + fsq_th + '"') else ""} \
      ~{if (frame_local_best) then "--framelocalbest" else ""} \
      ~{if (frame_best) then "--framebest" else ""} \
      ~{if (longest) then "--longest" else ""} \
      ~{if (seq) then "--seq" else ""} \
      ~{if (aa_seq) then "--aaseq" else ""} \
      ~{if (blocks) then "--blocks" else ""} \
      ~{if defined(max_nh) then ("--maxNH " +  '"' + max_nh + '"') else ""} \
      ~{if defined(min_mapq) then ("--minMapQ " +  '"' + min_mapq + '"') else ""} \
      ~{if (secondary) then "--secondary" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (no_compatible) then "--nocompatible" else ""} \
      ~{if defined(number_of_processes) then ("-p " +  '"' + number_of_processes + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    tis_enriched_seperated: "TIS enriched riboseq bam files, comma seperated"
    ordinary_riboseq_bam: "Ordinary riboseq bam files, comma seperated"
    gene_annotation_file_orf: "Gene annotation file for ORF prediction"
    genome_fasta_file: "Genome fasta file"
    output_result_file: "Output result file"
    only_test_input: "Only test input candidate ORFs, format: transID start\\nstop (0 based, half open)"
    gene_format: "Gene annotation file format (gtf, bed, gpd, gff,\\ndefault: auto)"
    tis_para: "Input offset parameter files for -t bam files"
    ribo_para: "Input offset parameter files for -b bam files"
    n_parts: "Group transcript according to TIS reads density\\nquantile (default: 10)"
    gene_file_known: "Gene file for known protein coding gene annotation and\\nTIS background estimation instead of -g gene file"
    output_tis_background: "Output TIS background estimation result (default:\\ntisBackground.txt)"
    input_background_estimation: "Input background estimation result file instead of\\ninstant estimation"
    trans_profile: "Output RPF P-site profile for each transcript"
    in_profile: "Input RPF P-site profile for each transcript, instead\\nof reading bam reads, save time for re-running"
    chr_map: "Input chromosome id mapping table file if annotation\\nchr ids are not same as chr ids in bam/fasta files"
    all_result: "All result output without FDR q-value threshold\\n(default: output + '_all.txt', 'off' to turn off)"
    alt: "Use alternative start codons (all codons with 1 base\\ndifferent from ATG)"
    alt_codons: "Use provided alternative start codons, comma\\nseperated, eg. CTG,GTG,ACG"
    tis_two_ribo: "Add TIS bam counts to ribo, if specified or -b not"
    harr_width: "Flanking region for harr data, in codons (default: 15)"
    enrich_test: "Use enrich test instead of frame test"
    min_aalen: "Min amino acid length of candidate ORF (default: 6)"
    gene_filter: "Only process given genes"
    tp_th: "TIS p value threshold (default: 0.05)"
    fp_th: "Frame p value threshold (default: 0.05)"
    min_pth: "At least one of TIS or frame p value should be lower\\nthan this threshold (default: 0.05)"
    fsp_th: "Fisher's p value threshold"
    fsq_th: "Fisher's FDR q value threshold"
    frame_local_best: "Only report local best frame test results"
    frame_best: "Only report best frame test results"
    longest: "Only report longest possible ORF results"
    seq: "Report ORF sequences"
    aa_seq: "Report amino acid sequences"
    blocks: "Report all exon block positions for predicted ORFs"
    max_nh: "Max NH value allowed for bam alignments (default: 5)"
    min_mapq: "Min MapQ value required for bam alignments (default:\\n1)"
    secondary: "Use bam secondary alignments"
    paired: "Reads are paired end"
    no_compatible: "Do not require reads compatible with transcript splice"
    number_of_processes: "Number of processes"
    verbose: "Increase output verbosity"
    provided: "--harr                The data is treated with harringtonine (instead of"
    junctions: "--compatiblemis COMPATIBLEMIS"
  }
  output {
    File out_stdout = stdout()
    File out_output_result_file = "${in_output_result_file}"
  }
}