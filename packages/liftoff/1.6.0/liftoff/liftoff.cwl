class: CommandLineTool
id: liftoff.cwl
inputs:
- id: in_annotation_file_lift
  doc: annotation file to lift over in GFF or GTF format
  type: File?
  inputBinding:
    prefix: -g
- id: in_db
  doc: "name of feature database; if not specified, the -g\nargument must be provided\
    \ and a database will be built\nautomatically"
  type: string?
  inputBinding:
    prefix: -db
- id: in_write_output_written
  doc: "write output to FILE in same format as input; by\ndefault, output is written\
    \ to terminal (stdout)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_write_unmapped_features
  doc: "write unmapped features to FILE; default is\n\"unmapped_features.txt\""
  type: File?
  inputBinding:
    prefix: -u
- id: in_exclude_partial
  doc: "write partial mappings below -s and -a threshold to\nunmapped_features.txt;\
    \ if true partial/low sequence\nidentity mappings will be included in the gff\
    \ file with\npartial_mapping=True, low_identity=True in comments"
  type: boolean?
  inputBinding:
    prefix: -exclude_partial
- id: in_dir
  doc: "name of directory to save intermediate fasta and SAM\nfiles; default is \"\
    intermediate_files\""
  type: Directory?
  inputBinding:
    prefix: -dir
- id: in_mm_two_options
  doc: =STR   space delimited minimap2 parameters. By default ="-a
  type: boolean?
  inputBinding:
    prefix: -mm2_options
- id: in_designate_feature_it
  doc: "designate a feature mapped only if it aligns with\ncoverage ≥A; by default\
    \ A=0.5"
  type: double?
  inputBinding:
    prefix: -a
- id: in_designate_feature_its
  doc: "designate a feature mapped only if its child features\n(usually exons/CDS)\
    \ align with sequence identity ≥S; by\ndefault S=0.5"
  type: double?
  inputBinding:
    prefix: -s
- id: in_distance_scaling_factor
  doc: "distance scaling factor; alignment nodes separated by\nmore than a factor\
    \ of D in the target genome will not be\nconnected in the graph; by default D=2.0"
  type: double?
  inputBinding:
    prefix: -d
- id: in_flank
  doc: "amount of flanking sequence to align as a fraction\n[0.0-1.0] of gene length.\
    \ This can improve gene\nalignment where gene structure differs between target\n\
    and reference; by default F=0.0"
  type: long?
  inputBinding:
    prefix: -flank
- id: in_use_parallel_processes
  doc: "use p parallel processes to accelerate alignment; by\ndefault p=1"
  type: long?
  inputBinding:
    prefix: -p
- id: in_minimap_path
  doc: Minimap2 path
  type: File?
  inputBinding:
    prefix: -m
- id: in_list_feature_lift
  doc: list of feature types to lift over
  type: string?
  inputBinding:
    prefix: -f
- id: in_infer_genes
  doc: "use if annotation file only includes transcripts,\nexon/CDS features"
  type: boolean?
  inputBinding:
    prefix: -infer_genes
- id: in_infer_transcripts
  doc: "use if annotation file only includes exon/CDS features\nand does not include\
    \ transcripts/mRNA"
  type: boolean?
  inputBinding:
    prefix: -infer_transcripts
- id: in_chrom_s
  doc: "comma seperated file with corresponding chromosomes in\nthe reference,target\
    \ sequences"
  type: File?
  inputBinding:
    prefix: -chroms
- id: in_unplaced
  doc: "text file with name(s) of unplaced sequences to map\ngenes from after genes\
    \ from chromosomes in chroms.txt\nare mapped; default is \"unplaced_seq_names.txt\""
  type: File?
  inputBinding:
    prefix: -unplaced
- id: in_copies
  doc: look for extra gene copies in the target genome
  type: boolean?
  inputBinding:
    prefix: -copies
- id: in_sc
  doc: "with -copies, minimum sequence identity in exons/CDS for\nwhich a gene is\
    \ considered a copy; must be greater than\n-s; default is 1.0"
  type: double?
  inputBinding:
    prefix: -sc
- id: in_overlap
  doc: "maximum fraction [0.0-1.0] of overlap allowed by 2\nfeatures; by default O=0.1"
  type: double?
  inputBinding:
    prefix: -overlap
- id: in_mismatch
  doc: "mismatch penalty in exons when finding best mapping; by\ndefault M=2"
  type: long?
  inputBinding:
    prefix: -mismatch
- id: in_gap_open
  doc: "gap open penalty in exons when finding best mapping; by\ndefault GO=2"
  type: long?
  inputBinding:
    prefix: -gap_open
- id: in_gap_extend
  doc: "gap extend penalty in exons when finding best mapping;\nby default GE=1"
  type: long?
  inputBinding:
    prefix: -gap_extend
- id: in_polish
  doc: "annotate status of each CDS (partial, missing start,\nmissing stop, inframe\
    \ stop codon)\n"
  type: boolean?
  inputBinding:
    prefix: -polish
- id: in_target
  doc: target fasta genome to lift genes to
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: reference fasta genome to lift genes from
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/liftoff:1.6.0--py_0
cwlVersion: v1.1
baseCommand:
- liftoff
