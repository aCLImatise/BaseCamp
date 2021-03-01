class: CommandLineTool
id: miraconvert.cwl
inputs:
- id: in_load_type_where
  doc: 'load this type of project files, where fromtype is:'
  type: string?
  inputBinding:
    prefix: -f
- id: in_write_sequencesassembly_type
  doc: "write the sequences/assembly to this type (multiple\nmentions of -t are allowed):"
  type: string?
  inputBinding:
    prefix: -t
- id: in_append_target_files
  doc: Append to target files instead of rewriting
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_adjust_sequence_casewhen
  doc: "Do not Adjust sequence case\nWhen reading formats which define clipping points,\n\
    and saving to formats which do not have clipping\ninformation, miraconvert normally\
    \ adjusts the case of\nread sequences: lower case for clipped parts, upper\ncase\
    \ for unclipped parts of reads.\nUse -A if you do not want this. See also -C.\n\
    Applies only to files/formats which do not contain\ncontigs."
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_blind_datareplaces_bases
  doc: "Blind data\nReplaces all bases in reads/contigs with a 'c'"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_perform_hard_clip
  doc: "Perform hard clip to reads\nWhen reading formats which define clipping points,\
    \ will\nsave only the unclipped part into the result file.\nApplies only to files/formats\
    \ which do not contain\ncontigs."
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_delete_gap_only
  doc: "Delete gap only columns\nWhen output is contigs: delete columns that are\n\
    entirely gaps (like after having deleted reads during\nediting in gap4 or similar)\n\
    When output is reads: delete gaps in reads"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_filter_read_groups
  doc: "Filter read groups to different files\nWorks only for input files with readgroups\
    \ (CAF/MAF)\n3 (or 4) files generated: one or two for paired, one\nfor unpaired\
    \ and one for debris reads.\nReads in paired file are interlaced by default, use\
    \ -F\ntwice to create separate files."
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_make_contigs_only
  doc: "Make contigs (only for -t = caf or maf)\nEncase single reads as contig singlets\
    \ into the CAF/MAF\nfile."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_when_given_selects
  doc: "when given, selects only reads or contigs given by\nname in that file."
  type: File?
  inputBinding:
    prefix: -n
- id: in_n_sorts_output
  doc: "like -n, but sorts output according to order given\nin file."
  type: File?
  inputBinding:
    prefix: -N
- id: in_when_used_inverts
  doc: when -n is used, inverts the selection
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_t_quality_offset
  doc: "t   FASTQ quality Offset (only for -f = 'fastq')\nOffset of quality values\
    \ in FASTQ file. Default of 33\nloads Sanger/Phred style files, using 0 tries\
    \ to\nautomatically recognise."
  type: File?
  inputBinding:
    prefix: -o
- id: in_string_be_parseduseful
  doc: "String with MIRA parameters to be parsed\nUseful when setting parameters affecting\
    \ consensus\ncalling like -CO:mrpg etc.\nE.g.: -P \"454_SETTINGS -CO:mrpg=3\""
  type: string?
  inputBinding:
    prefix: -P
- id: in_set_default_quality
  doc: "Set default quality for bases in file types without\nquality values. Furthermore,\
    \ do not stop if expected\nquality files are missing (e.g. '.fasta')"
  type: File?
  inputBinding:
    prefix: -q
- id: in_rename_contigssingletsreads_is
  doc: "Rename contigs/singlets/reads with given name string\nto which a counter is\
    \ appended.\nKnown bug: will create duplicate names if input\ncontains contigs/singlets\
    \ as well as free reads, i.e.\nreads not in contigs nor singlets."
  type: string?
  inputBinding:
    prefix: -R
- id: in_namescheme_renaming_reads
  doc: "(name)Scheme for renaming reads, important for\npaired-ends. Only 'solexa'\
    \ is currently supported."
  type: string?
  inputBinding:
    prefix: -S
- id: in_when_converting_reads
  doc: "When converting single reads, trim/clip away stretches\nof N and X and ends\
    \ of reads. Note: remember to use -C to\nalso perform a hard clip (e.g. with FASTA\
    \ as output)."
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_print_version_number
  doc: Print version number and exit
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_yield_max_clippedpadded
  doc: "Yield. Max (clipped/padded) bases to convert.\nWhen used on reads: output\
    \ will contain first reads of\nfile where length of clipped bases totals at least\
    \ -Y.\nWhen used on contigs: output will contain first contigs\nof file where\
    \ length of padded contigs totals at least\n-Y."
  type: long?
  inputBinding:
    prefix: -Y
- id: in_extract_contigs_consensus
  doc: "Do not extract contigs (or their consensus), but the\nsequence of the reads\
    \ they are composed of."
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_recalculate_consensus_valuesand
  doc: "[cCqf]       Recalculate consensus and / or consensus quality values\nand\
    \ / or SNP feature tags.\n'c' recalc cons & cons qualities (with IUPAC)\n'C' recalc\
    \ cons & cons qualities (forcing non-IUPAC)\n'q' recalc consensus qualities only\n\
    'f' recalc SNP features\nNote: only the last of cCq is relevant, f works as a\n\
    switch and can be combined with cQq (e.g. \"-r C -r f\")\nNote: if the CAF/MAF\
    \ contains multiple strains,\nrecalculation of cons & cons qualities is forced,\
    \ you\ncan just influence whether IUPACs are used or not."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_split_output_multiple
  doc: "split output into multiple files instead of creating a\nsingle file"
  type: File?
  inputBinding:
    prefix: -s
- id: in_fill_holes_effect
  doc: "'fillUp strain genomes'\nFill holes in the genome of one strain (N or @)\n\
    with sequence from a consensus of other strains\nTakes effect only with -r and\
    \ -t gbf or fasta/q\nin FASTA/Q: bases filled up are in lower case\nin GBF: bases\
    \ filled up are in upper case"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_defines_minimum_quality
  doc: "Defines minimum quality a consensus base of a strain\nmust have, consensus\
    \ bases below this will be 'N'\nDefault: 0\nOnly used with -r, and -f is caf/maf\
    \ and -t is (fasta\nor gbf)"
  type: long?
  inputBinding:
    prefix: -Q
- id: in_defines_minimum_coverage
  doc: "Defines minimum coverage a consensus base of a strain\nmust have, bases with\
    \ coverage below this will be 'N'\nDefault: 0\nOnly used with -r, and -t is (fasta\n\
    or gbf)"
  type: long?
  inputBinding:
    prefix: -V
- id: in_minimum_contig_read
  doc: "Minimum contig or unclipped read length\nWhen loading, discard all contigs\
    \ / reads with a\nlength less than this value. Default: 0 (=switched off)\nNote:\
    \ not applied to reads in contigs!"
  type: long?
  inputBinding:
    prefix: -x
- id: in_similar_applies_reads
  doc: "Similar to -x but applies only to reads and\nthen to the clipped length."
  type: long?
  inputBinding:
    prefix: -X
- id: in_minimum_average_contig
  doc: "Minimum average contig coverage\nWhen loading, discard all contigs with an\n\
    average coverage less than this value.\nDefault: 1"
  type: long?
  inputBinding:
    prefix: -y
- id: in_minimum_number_reads
  doc: "Minimum number of reads in contig\nWhen loading, discard all contigs with\
    \ a\nnumber of reads less than this value.\nDefault: 0 (=switched off)"
  type: long?
  inputBinding:
    prefix: -z
- id: in_when_html_number
  doc: "when output as text or HTML: number of bases shown in\none alignment line.\
    \ Default: 60."
  type: long?
  inputBinding:
    prefix: -l
- id: in_when_html_character
  doc: "when output as text or HTML: character used to pad\nendgaps. Default: ' '\
    \ (blank)"
  type: string?
  inputBinding:
    prefix: -c
- id: in_var_32
  doc: a complete assembly or single sequences from CAF
  type: string
  inputBinding:
    position: 0
- id: in_var_33
  doc: a complete assembly or single sequences from CAF
  type: string
  inputBinding:
    position: 1
- id: in_sequences_fasta_file
  doc: sequences from a FASTA file
  type: string
  inputBinding:
    position: 2
- id: in_sequences_fastq_file
  doc: sequences from a FASTQ file
  type: string
  inputBinding:
    position: 3
- id: in_phd
  doc: sequences from a PHD file
  type: string
  inputBinding:
    position: 0
- id: in_fof_n_exp
  doc: sequences in EXP files from file of filenames
  type: string
  inputBinding:
    position: 1
- id: in_ace
  doc: sequences or complete assembly to ACE
  type: string
  inputBinding:
    position: 2
- id: in_sequences_complete_assembly_caf
  doc: sequences or complete assembly to CAF
  type: string
  inputBinding:
    position: 3
- id: in_sequences_complete_assembly_maf
  doc: sequences or complete assembly to MAF
  type: string
  inputBinding:
    position: 4
- id: in_sam
  doc: complete assembly to SAM
  type: string
  inputBinding:
    position: 5
- id: in_sam_nbb
  doc: "like above, but leaving out reference (backbones) in\nmapping assemblies"
  type: string
  inputBinding:
    position: 6
- id: in_gff_three
  doc: consensus to GFF3
  type: long
  inputBinding:
    position: 0
- id: in_wig
  doc: assembly coverage info to wiggle file
  type: string
  inputBinding:
    position: 1
- id: in_gc_wig
  doc: assembly gc content info to wiggle file
  type: string
  inputBinding:
    position: 2
- id: in_sequences_consensus_toqual
  doc: "sequences or consensus to FASTA file (qualities to\n.qual)"
  type: string
  inputBinding:
    position: 3
- id: in_sequences_consensus_fastq
  doc: sequences or consensus to FASTQ file
  type: string
  inputBinding:
    position: 4
- id: in_exp
  doc: "sequences or complete assembly to EXP files in\ndirectories. Complete assemblies\
    \ are suited for gap4\nimport as directed assembly.\nNote: using caf2gap to import\
    \ into gap4 is recommended\nthough"
  type: string
  inputBinding:
    position: 5
- id: in_text
  doc: "complete assembly to text alignment (only when -f is\ncaf, maf or gbf)"
  type: string
  inputBinding:
    position: 6
- id: in_html
  doc: "complete assembly to HTML (only when -f is caf, maf or\ngbf)"
  type: string
  inputBinding:
    position: 7
- id: in_tcs
  doc: complete assembly to tcs
  type: string
  inputBinding:
    position: 8
- id: in_hsn_p
  doc: "surrounding of SNP tags (SROc, SAOc, SIOc) to HTML\n(only when -f is caf,\
    \ maf or gbf)"
  type: string
  inputBinding:
    position: 9
- id: in_as_np
  doc: "analysis of SNP tags\n(only when -f is caf, maf or gbf)"
  type: string
  inputBinding:
    position: 10
- id: in_c_stats
  doc: "contig statistics file like from MIRA\n(only when source contains contigs)"
  type: string
  inputBinding:
    position: 11
- id: in_cr_list
  doc: "contig read list file like from MIRA\n(only when source contains contigs)"
  type: string
  inputBinding:
    position: 12
- id: in_masked_fast_a
  doc: "reads where sequencing vector is masked out\n(with X) to FASTA file (qualities\
    \ to .qual)"
  type: string
  inputBinding:
    position: 13
- id: in_s_caf
  doc: sequences or complete assembly to single sequences CAF
  type: string
  inputBinding:
    position: 14
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_n_sorts_output
  doc: "like -n, but sorts output according to order given\nin file."
  type: File?
  outputBinding:
    glob: $(inputs.in_n_sorts_output)
- id: out_split_output_multiple
  doc: "split output into multiple files instead of creating a\nsingle file"
  type: File?
  outputBinding:
    glob: $(inputs.in_split_output_multiple)
hints: []
cwlVersion: v1.1
baseCommand:
- miraconvert
