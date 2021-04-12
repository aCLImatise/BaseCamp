version 1.0

task Liftoff {
  input {
    File? annotation_file_lift
    String? db
    File? write_output_written
    File? write_unmapped_features
    Boolean? exclude_partial
    Directory? dir
    Boolean? mm_two_options
    Float? designate_feature_it
    Float? designate_feature_its
    Float? distance_scaling_factor
    Int? flank
    Int? use_parallel_processes
    File? minimap_path
    String? list_feature_lift
    Boolean? infer_genes
    Boolean? infer_transcripts
    File? chrom_s
    File? unplaced
    Boolean? copies
    Float? sc
    Float? overlap
    Int? mismatch
    Int? gap_open
    Int? gap_extend
    Boolean? polish
    String target
    String reference
  }
  command <<<
    liftoff \
      ~{target} \
      ~{reference} \
      ~{if defined(annotation_file_lift) then ("-g " +  '"' + annotation_file_lift + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(write_output_written) then ("-o " +  '"' + write_output_written + '"') else ""} \
      ~{if defined(write_unmapped_features) then ("-u " +  '"' + write_unmapped_features + '"') else ""} \
      ~{if (exclude_partial) then "-exclude_partial" else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""} \
      ~{if (mm_two_options) then "-mm2_options" else ""} \
      ~{if defined(designate_feature_it) then ("-a " +  '"' + designate_feature_it + '"') else ""} \
      ~{if defined(designate_feature_its) then ("-s " +  '"' + designate_feature_its + '"') else ""} \
      ~{if defined(distance_scaling_factor) then ("-d " +  '"' + distance_scaling_factor + '"') else ""} \
      ~{if defined(flank) then ("-flank " +  '"' + flank + '"') else ""} \
      ~{if defined(use_parallel_processes) then ("-p " +  '"' + use_parallel_processes + '"') else ""} \
      ~{if defined(minimap_path) then ("-m " +  '"' + minimap_path + '"') else ""} \
      ~{if defined(list_feature_lift) then ("-f " +  '"' + list_feature_lift + '"') else ""} \
      ~{if (infer_genes) then "-infer_genes" else ""} \
      ~{if (infer_transcripts) then "-infer_transcripts" else ""} \
      ~{if defined(chrom_s) then ("-chroms " +  '"' + chrom_s + '"') else ""} \
      ~{if defined(unplaced) then ("-unplaced " +  '"' + unplaced + '"') else ""} \
      ~{if (copies) then "-copies" else ""} \
      ~{if defined(sc) then ("-sc " +  '"' + sc + '"') else ""} \
      ~{if defined(overlap) then ("-overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(mismatch) then ("-mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap_open) then ("-gap_open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("-gap_extend " +  '"' + gap_extend + '"') else ""} \
      ~{if (polish) then "-polish" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/liftoff:1.6.0--py_0"
  }
  parameter_meta {
    annotation_file_lift: "annotation file to lift over in GFF or GTF format"
    db: "name of feature database; if not specified, the -g\\nargument must be provided and a database will be built\\nautomatically"
    write_output_written: "write output to FILE in same format as input; by\\ndefault, output is written to terminal (stdout)"
    write_unmapped_features: "write unmapped features to FILE; default is\\n\\\"unmapped_features.txt\\\""
    exclude_partial: "write partial mappings below -s and -a threshold to\\nunmapped_features.txt; if true partial/low sequence\\nidentity mappings will be included in the gff file with\\npartial_mapping=True, low_identity=True in comments"
    dir: "name of directory to save intermediate fasta and SAM\\nfiles; default is \\\"intermediate_files\\\""
    mm_two_options: "=STR   space delimited minimap2 parameters. By default =\\\"-a"
    designate_feature_it: "designate a feature mapped only if it aligns with\\ncoverage ≥A; by default A=0.5"
    designate_feature_its: "designate a feature mapped only if its child features\\n(usually exons/CDS) align with sequence identity ≥S; by\\ndefault S=0.5"
    distance_scaling_factor: "distance scaling factor; alignment nodes separated by\\nmore than a factor of D in the target genome will not be\\nconnected in the graph; by default D=2.0"
    flank: "amount of flanking sequence to align as a fraction\\n[0.0-1.0] of gene length. This can improve gene\\nalignment where gene structure differs between target\\nand reference; by default F=0.0"
    use_parallel_processes: "use p parallel processes to accelerate alignment; by\\ndefault p=1"
    minimap_path: "Minimap2 path"
    list_feature_lift: "list of feature types to lift over"
    infer_genes: "use if annotation file only includes transcripts,\\nexon/CDS features"
    infer_transcripts: "use if annotation file only includes exon/CDS features\\nand does not include transcripts/mRNA"
    chrom_s: "comma seperated file with corresponding chromosomes in\\nthe reference,target sequences"
    unplaced: "text file with name(s) of unplaced sequences to map\\ngenes from after genes from chromosomes in chroms.txt\\nare mapped; default is \\\"unplaced_seq_names.txt\\\""
    copies: "look for extra gene copies in the target genome"
    sc: "with -copies, minimum sequence identity in exons/CDS for\\nwhich a gene is considered a copy; must be greater than\\n-s; default is 1.0"
    overlap: "maximum fraction [0.0-1.0] of overlap allowed by 2\\nfeatures; by default O=0.1"
    mismatch: "mismatch penalty in exons when finding best mapping; by\\ndefault M=2"
    gap_open: "gap open penalty in exons when finding best mapping; by\\ndefault GO=2"
    gap_extend: "gap extend penalty in exons when finding best mapping;\\nby default GE=1"
    polish: "annotate status of each CDS (partial, missing start,\\nmissing stop, inframe stop codon)\\n"
    target: "target fasta genome to lift genes to"
    reference: "reference fasta genome to lift genes from"
  }
  output {
    File out_stdout = stdout()
  }
}