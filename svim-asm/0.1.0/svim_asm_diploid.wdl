version 1.0

task SvimasmDiploid {
  input {
    Int? min_mapq
    Int? min_sv_size
    Int? max_sv_size
    Int? query_gap_tolerance
    Int? query_overlap_tolerance
    Int? reference_gap_tolerance
    Int? reference_overlap_tolerance
    Int? max_edit_distance
    File? sample
    String? types
    Boolean? symbolic_alleles
    Boolean? duplications_as_insertions
    Boolean? query_names
    String working_dir
    Int bam_file_one
    Int bam_file_two
    String genome
  }
  command <<<
    svim_asm diploid \
      ~{working_dir} \
      ~{bam_file_one} \
      ~{bam_file_two} \
      ~{genome} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_sv_size) then ("--min_sv_size " +  '"' + min_sv_size + '"') else ""} \
      ~{if defined(max_sv_size) then ("--max_sv_size " +  '"' + max_sv_size + '"') else ""} \
      ~{if defined(query_gap_tolerance) then ("--query_gap_tolerance " +  '"' + query_gap_tolerance + '"') else ""} \
      ~{if defined(query_overlap_tolerance) then ("--query_overlap_tolerance " +  '"' + query_overlap_tolerance + '"') else ""} \
      ~{if defined(reference_gap_tolerance) then ("--reference_gap_tolerance " +  '"' + reference_gap_tolerance + '"') else ""} \
      ~{if defined(reference_overlap_tolerance) then ("--reference_overlap_tolerance " +  '"' + reference_overlap_tolerance + '"') else ""} \
      ~{if defined(max_edit_distance) then ("--max_edit_distance " +  '"' + max_edit_distance + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{if (symbolic_alleles) then "--symbolic_alleles" else ""} \
      ~{if (duplications_as_insertions) then "--duplications_as_insertions" else ""} \
      ~{if (query_names) then "--query_names" else ""}
  >>>
  parameter_meta {
    min_mapq: "Minimum mapping quality of alignments to consider\\n(default: 20). Alignments with a lower mapping quality\\nare ignored."
    min_sv_size: "Minimum SV size to detect (default: 40). SVIM can\\npotentially detect events of any size but is limited\\nby the signal-to-noise ratio in the input alignments.\\nThat means that more accurate assemblies and\\nalignments enable the detection of smaller events."
    max_sv_size: "Maximum SV size to detect (default: 100000). This\\nparameter is used to distinguish long deletions (and\\ninversions) from translocations which cannot be\\ndistinguished from the alignment alone. Split read\\nsegments mapping far apart on the reference could\\neither indicate a very long deletion (inversion) or a\\ntranslocation breakpoint. SVIM calls a translocation\\nbreakpoint if the mapping distance is larger than this\\nparameter and a deletion (or inversion) if it is\\nsmaller or equal."
    query_gap_tolerance: "Maximum tolerated gap between adjacent alignment\\nsegments on the query (default: 50). Example:\\nDeletions are detected from two subsequent segments of\\na split query sequence that are mapped far apart from\\neach other on the reference. The query gap tolerance\\ndetermines the maximum tolerated length of the query\\ngap between both segments. If there is an unaligned\\nquery segment larger than this value between the two\\nsegments, no deletion is called."
    query_overlap_tolerance: "Maximum tolerated overlap between adjacent alignment\\nsegments on the query (default: 50). Example:\\nDeletions are detected from two subsequent segments of\\na split query sequence that are mapped far apart from\\neach other on the reference. The query overlap\\ntolerance determines the maximum tolerated length of\\nan overlap between both segments in the query. If the\\noverlap between the two segments in the query is\\nlarger than this value, no deletion is called."
    reference_gap_tolerance: "Maximum tolerated gap between adjacent alignment\\nsegments on the reference (default: 50). Example:\\nInsertions are detected from two segments of a split\\nquery sequence that are mapped right next to each\\nother on the reference but with unaligned sequence\\nbetween them on the query. The reference gap tolerance\\ndetermines the maximum tolerated length of the\\nreference gap between both segments. If there is a\\nreference gap larger than this value between the two\\nsegments, no insertion is called."
    reference_overlap_tolerance: "Maximum tolerated overlap between adjacent alignment\\nsegments on the reference (default: 50). Example:\\nInsertions are detected from two segments of a split\\nquery sequence that are mapped right next to each\\nother on the reference but with unaligned sequence\\nbetween them on the query. The reference overlap\\ntolerance determines the maximum tolerated length of\\nan overlap between both segments on the reference. If\\nthere is a reference gap larger than this value\\nbetween the two segments, no insertion is called."
    max_edit_distance: "Maximum edit distance between both alleles to be\\npaired up into a homozygous call (default: 200)."
    sample: "Sample ID to include in output vcf file (default:\\nSample)"
    types: "SV types to include in output VCF (default:\\nDEL,INS,INV,DUP_TAN,DUP_INT,BND). Give a comma-\\nseparated list of SV types. The possible SV types are:\\nDEL (deletions), INS (novel insertions), INV\\n(inversions), DUP_TAN (tandem duplications), DUP_INT\\n(interspersed duplications), BND (breakends)."
    symbolic_alleles: "Use symbolic alleles, such as <DEL> or <INV> in the\\nVCF output (default: False). By default, deletions,\\ninsertions, and inversions are represented by their\\nnucleotide sequence in the output VCF."
    duplications_as_insertions: "Represent tandem and interspersed duplications as\\ninsertions in output VCF (default: False). By default,\\nduplications are represented by the SVTYPE=DUP and the\\ngenomic source is given by the POS and END tags. When\\nenabling this option, duplications are instead\\nrepresented by the SVTYPE=INS and POS and END both\\ngive the insertion point of the duplication."
    query_names: "Output names of supporting query sequences in INFO tag\\nof VCF (default: False). If enabled, the INFO/READS\\ntag contains the list of names of the supporting query\\nsequences.\\n"
    working_dir: "Working and output directory. Existing files in the\\ndirectory are overwritten. If the directory does not\\nexist, it is created."
    bam_file_one: "SAM/BAM file with alignment of query assembly's first\\nhaplotype to reference assembly (needs to be\\ncoordinate-sorted)"
    bam_file_two: "SAM/BAM file with alignment of query assembly's second\\nhaplotype to reference assembly (needs to be\\ncoordinate-sorted)"
    genome: "Reference genome file that the assembly was aligned to\\n(FASTA)"
  }
  output {
    File out_stdout = stdout()
    File out_sample = "${in_sample}"
  }
}