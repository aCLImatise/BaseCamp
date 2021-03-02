class: CommandLineTool
id: svim_asm_haploid.cwl
inputs:
- id: in_verbose
  doc: 'Enable more verbose logging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_min_mapq
  doc: "Minimum mapping quality of alignments to consider\n(default: 20). Alignments\
    \ with a lower mapping quality\nare ignored."
  type: long?
  inputBinding:
    prefix: --min_mapq
- id: in_min_sv_size
  doc: "Minimum SV size to detect (default: 40). SVIM can\npotentially detect events\
    \ of any size but is limited\nby the signal-to-noise ratio in the input alignments.\n\
    That means that more accurate assemblies and\nalignments enable the detection\
    \ of smaller events."
  type: long?
  inputBinding:
    prefix: --min_sv_size
- id: in_max_sv_size
  doc: "Maximum SV size to detect (default: 100000). This\nparameter is used to distinguish\
    \ long deletions (and\ninversions) from translocations which cannot be\ndistinguished\
    \ from the alignment alone. Split read\nsegments mapping far apart on the reference\
    \ could\neither indicate a very long deletion (inversion) or a\ntranslocation\
    \ breakpoint. SVIM calls a translocation\nbreakpoint if the mapping distance is\
    \ larger than this\nparameter and a deletion (or inversion) if it is\nsmaller\
    \ or equal."
  type: long?
  inputBinding:
    prefix: --max_sv_size
- id: in_query_gap_tolerance
  doc: "Maximum tolerated gap between adjacent alignment\nsegments on the query (default:\
    \ 50). Example:\nDeletions are detected from two subsequent segments of\na split\
    \ query sequence that are mapped far apart from\neach other on the reference.\
    \ The query gap tolerance\ndetermines the maximum tolerated length of the query\n\
    gap between both segments. If there is an unaligned\nquery segment larger than\
    \ this value between the two\nsegments, no deletion is called."
  type: long?
  inputBinding:
    prefix: --query_gap_tolerance
- id: in_query_overlap_tolerance
  doc: "Maximum tolerated overlap between adjacent alignment\nsegments on the query\
    \ (default: 50). Example:\nDeletions are detected from two subsequent segments\
    \ of\na split query sequence that are mapped far apart from\neach other on the\
    \ reference. The query overlap\ntolerance determines the maximum tolerated length\
    \ of\nan overlap between both segments in the query. If the\noverlap between the\
    \ two segments in the query is\nlarger than this value, no deletion is called."
  type: long?
  inputBinding:
    prefix: --query_overlap_tolerance
- id: in_reference_gap_tolerance
  doc: "Maximum tolerated gap between adjacent alignment\nsegments on the reference\
    \ (default: 50). Example:\nInsertions are detected from two segments of a split\n\
    query sequence that are mapped right next to each\nother on the reference but\
    \ with unaligned sequence\nbetween them on the query. The reference gap tolerance\n\
    determines the maximum tolerated length of the\nreference gap between both segments.\
    \ If there is a\nreference gap larger than this value between the two\nsegments,\
    \ no insertion is called."
  type: long?
  inputBinding:
    prefix: --reference_gap_tolerance
- id: in_reference_overlap_tolerance
  doc: "Maximum tolerated overlap between adjacent alignment\nsegments on the reference\
    \ (default: 50). Example:\nInsertions are detected from two segments of a split\n\
    query sequence that are mapped right next to each\nother on the reference but\
    \ with unaligned sequence\nbetween them on the query. The reference overlap\n\
    tolerance determines the maximum tolerated length of\nan overlap between both\
    \ segments on the reference. If\nthere is a reference gap larger than this value\n\
    between the two segments, no insertion is called."
  type: long?
  inputBinding:
    prefix: --reference_overlap_tolerance
- id: in_sample
  doc: "Sample ID to include in output vcf file (default:\nSample)"
  type: File?
  inputBinding:
    prefix: --sample
- id: in_types
  doc: "SV types to include in output VCF (default:\nDEL,INS,INV,DUP:TANDEM,DUP:INT,BND).\
    \ Give a comma-\nseparated list of SV types. The possible SV types are:\nDEL (deletions),\
    \ INS (novel insertions), INV\n(inversions), DUP:TANDEM (tandem duplications),\n\
    DUP:INT (interspersed duplications), BND (breakends)."
  type: long?
  inputBinding:
    prefix: --types
- id: in_symbolic_alleles
  doc: "Use symbolic alleles, such as <DEL> or <INV> in the\nVCF output (default:\
    \ False). By default, deletions,\ninsertions, and inversions are represented by\
    \ their\nnucleotide sequence in the output VCF."
  type: boolean?
  inputBinding:
    prefix: --symbolic_alleles
- id: in_tandem_duplications_as_insertions
  doc: "Represent tandem duplications as insertions in output\nVCF (default: False).\
    \ By default, tandem duplications\nare represented by the SVTYPE=DUP:TANDEM and\
    \ the\ngenomic source is given by the POS and END tags. When\nenabling this option,\
    \ duplications are instead\nrepresented by the SVTYPE=INS and POS and END both\n\
    give the insertion point of the duplication."
  type: boolean?
  inputBinding:
    prefix: --tandem_duplications_as_insertions
- id: in_interspersed_duplications_as_insertions
  doc: "Represent interspersed duplications as insertions in\noutput VCF (default:\
    \ False). By default, interspersed\nduplications are represented by the SVTYPE=DUP:INT\
    \ and\nthe genomic source is given by the POS and END tags.\nWhen enabling this\
    \ option, duplications are instead\nrepresented by the SVTYPE=INS and POS and\
    \ END both\ngive the insertion point of the duplication."
  type: boolean?
  inputBinding:
    prefix: --interspersed_duplications_as_insertions
- id: in_query_names
  doc: "Output names of supporting query sequences in INFO tag\nof VCF (default: False).\
    \ If enabled, the INFO/READS\ntag contains the list of names of the supporting\
    \ query\nsequences.\n"
  type: boolean?
  inputBinding:
    prefix: --query_names
- id: in_working_dir
  doc: "Working and output directory. Existing files in the\ndirectory are overwritten.\
    \ If the directory does not\nexist, it is created."
  type: string
  inputBinding:
    position: 0
- id: in_bam_file
  doc: "SAM/BAM file with alignment of query assembly to\nreference assembly (needs\
    \ to be coordinate-sorted and\nindexed)"
  type: string
  inputBinding:
    position: 1
- id: in_genome
  doc: "Reference genome file that the assembly was aligned to\n(FASTA)"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sample
  doc: "Sample ID to include in output vcf file (default:\nSample)"
  type: File?
  outputBinding:
    glob: $(inputs.in_sample)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/svim-asm:1.0.2--py_0
cwlVersion: v1.1
baseCommand:
- svim-asm
- haploid
