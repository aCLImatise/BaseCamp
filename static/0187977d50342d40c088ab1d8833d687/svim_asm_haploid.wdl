version 1.0

task SvimAsmHaploid {
  input {
    Int? min_mapq
    Int? min_sv_size
    Int? max_sv_size
    String? query_gap_tolerance
    String? query_overlap_tolerance
    String? reference_gap_tolerance
    String? reference_overlap_tolerance
    String? sample
    String? types
    Boolean? symbolic_alleles
    Boolean? duplications_as_insertions
    Boolean? query_names
    String working_dir
    String bam_file
    String genome
  }
  command <<<
    svim-asm haploid \
      ~{working_dir} \
      ~{bam_file} \
      ~{genome} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_sv_size) then ("--min_sv_size " +  '"' + min_sv_size + '"') else ""} \
      ~{if defined(max_sv_size) then ("--max_sv_size " +  '"' + max_sv_size + '"') else ""} \
      ~{if defined(query_gap_tolerance) then ("--query_gap_tolerance " +  '"' + query_gap_tolerance + '"') else ""} \
      ~{if defined(query_overlap_tolerance) then ("--query_overlap_tolerance " +  '"' + query_overlap_tolerance + '"') else ""} \
      ~{if defined(reference_gap_tolerance) then ("--reference_gap_tolerance " +  '"' + reference_gap_tolerance + '"') else ""} \
      ~{if defined(reference_overlap_tolerance) then ("--reference_overlap_tolerance " +  '"' + reference_overlap_tolerance + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{true="--symbolic_alleles" false="" symbolic_alleles} \
      ~{true="--duplications_as_insertions" false="" duplications_as_insertions} \
      ~{true="--query_names" false="" query_names}
  >>>
  parameter_meta {
    min_mapq: "Minimum mapping quality of alignments to consider (default: 20). Alignments with a lower mapping quality are ignored."
    min_sv_size: "Minimum SV size to detect (default: 40). SVIM can potentially detect events of any size but is limited by the signal-to-noise ratio in the input alignments. That means that more accurate assemblies and alignments enable the detection of smaller events."
    max_sv_size: "Maximum SV size to detect (default: 100000). This parameter is used to distinguish long deletions (and inversions) from translocations which cannot be distinguished from the alignment alone. Split read segments mapping far apart on the reference could either indicate a very long deletion (inversion) or a translocation breakpoint. SVIM calls a translocation breakpoint if the mapping distance is larger than this parameter and a deletion (or inversion) if it is smaller or equal."
    query_gap_tolerance: "Maximum tolerated gap between adjacent alignment segments on the query (default: 50). Example: Deletions are detected from two subsequent segments of a split query sequence that are mapped far apart from each other on the reference. The query gap tolerance determines the maximum tolerated length of the query gap between both segments. If there is an unaligned query segment larger than this value between the two segments, no deletion is called."
    query_overlap_tolerance: "Maximum tolerated overlap between adjacent alignment segments on the query (default: 50). Example: Deletions are detected from two subsequent segments of a split query sequence that are mapped far apart from each other on the reference. The query overlap tolerance determines the maximum tolerated length of an overlap between both segments in the query. If the overlap between the two segments in the query is larger than this value, no deletion is called."
    reference_gap_tolerance: "Maximum tolerated gap between adjacent alignment segments on the reference (default: 50). Example: Insertions are detected from two segments of a split query sequence that are mapped right next to each other on the reference but with unaligned sequence between them on the query. The reference gap tolerance determines the maximum tolerated length of the reference gap between both segments. If there is a reference gap larger than this value between the two segments, no insertion is called."
    reference_overlap_tolerance: "Maximum tolerated overlap between adjacent alignment segments on the reference (default: 50). Example: Insertions are detected from two segments of a split query sequence that are mapped right next to each other on the reference but with unaligned sequence between them on the query. The reference overlap tolerance determines the maximum tolerated length of an overlap between both segments on the reference. If there is a reference gap larger than this value between the two segments, no insertion is called."
    sample: "Sample ID to include in output vcf file (default: Sample)"
    types: "SV types to include in output VCF (default: DEL,INS,INV,DUP_TAN,DUP_INT,BND). Give a comma- separated list of SV types. The possible SV types are: DEL (deletions), INS (novel insertions), INV (inversions), DUP_TAN (tandem duplications), DUP_INT (interspersed duplications), BND (breakends)."
    symbolic_alleles: "Use symbolic alleles, such as <DEL> or <INV> in the VCF output (default: False). By default, deletions, insertions, and inversions are represented by their nucleotide sequence in the output VCF."
    duplications_as_insertions: "Represent tandem and interspersed duplications as insertions in output VCF (default: False). By default, duplications are represented by the SVTYPE=DUP and the genomic source is given by the POS and END tags. When enabling this option, duplications are instead represented by the SVTYPE=INS and POS and END both give the insertion point of the duplication."
    query_names: "Output names of supporting query sequences in INFO tag of VCF (default: False). If enabled, the INFO/READS tag contains the list of names of the supporting query sequences."
    working_dir: "Working and output directory. Existing files in the directory are overwritten. If the directory does not exist, it is created."
    bam_file: "SAM/BAM file with alignment of query assembly to reference assembly (needs to be coordinate-sorted)"
    genome: "Reference genome file that the assembly was aligned to (FASTA)"
  }
}