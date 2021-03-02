class: CommandLineTool
id: gffread.cwl
inputs:
- id: in_discard_transcripts_having
  doc: discard transcripts having an intron larger than <maxintron>
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_discard_transcripts_shorter
  doc: discard transcripts shorter than <minlen> bases
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_only_show_transcripts
  doc: "only show transcripts overlapping coordinate range <start>..<end>\n(on chromosome/contig\
    \ <chr>, strand <strand> if provided)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_r_option_discard
  doc: "for -r option, discard all transcripts that are not fully\ncontained within\
    \ the given range"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_discard_singleexon_transcripts
  doc: discard single-exon transcripts
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_coding_discard_mrnas
  doc: 'coding only: discard mRNAs that have no CDS features'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_nc
  doc: 'only: discard mRNAs that have CDS features'
  type: string?
  inputBinding:
    prefix: --nc
- id: in_ignore_locus
  doc: ': discard locus features and attributes found in the input'
  type: boolean?
  inputBinding:
    prefix: --ignore-locus
- id: in_use_description_field
  doc: "use the description field from <seq_info.fsize> and add it\nas the value for\
    \ a 'descr' attribute to the GFF record"
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_seqinfofsize_tabdelimited_file
  doc: "<seq_info.fsize> is a tab-delimited file providing this info\nfor each of\
    \ the mapped sequences:\n<seq-name> <seq-length> <seq-description>\n(useful for\
    \ -A option with mRNA/EST/protein mappings)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sort_alpha
  doc: ': chromosomes (reference sequences) are sorted alphabetically'
  type: boolean?
  inputBinding:
    prefix: --sort-alpha
- id: in_sort_by
  doc: ": sort the reference sequences by the order in which their\nnames are given\
    \ in the <refseq.lst> file"
  type: boolean?
  inputBinding:
    prefix: --sort-by
- id: in_preserve_gff_attributes
  doc: preserve all GFF attributes (for non-exon features)
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_keep_exon_attrs
  doc: ": for -F option, do not attempt to reduce redundant\nexon/CDS attributes"
  type: boolean?
  inputBinding:
    prefix: --keep-exon-attrs
- id: in_keep_attributes_move
  doc: "do not keep exon attributes, move them to the transcript feature\n(for GFF3\
    \ output)"
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_keep_genes
  doc: ': in transcript-only mode (default), also preserve gene records'
  type: boolean?
  inputBinding:
    prefix: --keep-genes
- id: in_keep_comments
  doc: ': for GFF3 input/output, try to preserve comments'
  type: boolean?
  inputBinding:
    prefix: --keep-comments
- id: in_process_other_records
  doc: "process other non-transcript GFF records (by default non-transcript\nrecords\
    \ are ignored)"
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_discard_mrnas_cds
  doc: discard any mRNAs with CDS having in-frame stop codons (requires -g)
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_v_option_check
  doc: "for -V option, check and adjust the starting CDS phase\nif the original phase\
    \ leads to a translation with an\nin-frame stop codon"
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_v_option_singleexon
  doc: "for -V option, single-exon transcripts are also checked on the\nopposite strand\
    \ (requires -g)"
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_add_transcript_level
  doc: "add transcript level GFF attributes about the coding status of each\ntranscript,\
    \ including partialness or in-frame stop codons (requires -g)"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_add_has_cds
  doc: ": add a \"hasCDS\" attribute with value \"true\" for transcripts\nthat have\
    \ CDS features"
  type: boolean?
  inputBinding:
    prefix: --add-hasCDS
- id: in_adj_stop
  doc: "codon adjustment: enables -P and performs automatic\nadjustment of the CDS\
    \ stop coordinate if premature or downstream"
  type: string?
  inputBinding:
    prefix: --adj-stop
- id: in_discard_multiexon_mrnas
  doc: "discard multi-exon mRNAs that have any intron with a non-canonical\nsplice\
    \ site consensus (i.e. not GT-AG, GC-AG or AT-AC)"
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_discard_mrnas_codonor
  doc: "discard any mRNAs that either lack initial START codon\nor the terminal STOP\
    \ codon, or have an in-frame stop codon\n(i.e. only print mRNAs with a complete\
    \ CDS)"
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_no_pseudo
  doc: ": filter out records matching the 'pseudo' keyword"
  type: boolean?
  inputBinding:
    prefix: --no-pseudo
- id: in_in_bed
  doc: ": input should be parsed as BED format (automatic if the input\nfilename ends\
    \ with .bed*)"
  type: boolean?
  inputBinding:
    prefix: --in-bed
- id: in_in_tlf
  doc: ": input GFF-like one-line-per-transcript format without exon/CDS\nfeatures\
    \ (see --tlf option below); automatic if the input\nfilename ends with .tlf)"
  type: boolean?
  inputBinding:
    prefix: --in-tlf
- id: in_stream
  doc: ": fast processing of input GFF/BED transcripts as they are received\n((no\
    \ sorting, exons must be grouped by transcript in the input data)"
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_merge
  doc: ": cluster the input transcripts into loci, discarding\n\"duplicated\" transcripts\
    \ (those with the same exact introns\nand fully contained or equal boundaries)"
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_m_option_write
  doc: ': for -M option, write duplication info to file <dupinfo>'
  type: File?
  inputBinding:
    prefix: -d
- id: in_cluster_only
  doc: ": same as -M/--merge but without discarding any of the\n\"duplicate\" transcripts,\
    \ only create \"locus\" features"
  type: boolean?
  inputBinding:
    prefix: --cluster-only
- id: in_m_option_also
  doc: "for -M option: also discard as redundant the shorter, fully contained\ntranscripts\
    \ (intron chains matching a part of the container)"
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_m_option_no
  doc: "for -M option, no longer require boundary containment when assessing\nredundancy\
    \ (can be combined with -K); only introns have to match for\nmulti-exon transcripts,\
    \ and >=80% overlap for single-exon transcripts"
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_m_option_enforce
  doc: "for -M option, enforce -Q but also discard overlapping single-exon\ntranscripts,\
    \ even on the opposite strand (can be combined with -K)"
  type: boolean?
  inputBinding:
    prefix: -Y
- id: in_force_exons
  doc: ": make sure that the lowest level GFF features are considered\n\"exon\" features"
  type: boolean?
  inputBinding:
    prefix: --force-exons
- id: in_gene_two_exon
  doc: ": for single-line genes not parenting any transcripts, add an\nexon feature\
    \ spanning the entire gene (treat it as a transcript)"
  type: boolean?
  inputBinding:
    prefix: --gene2exon
- id: in_t_adopt
  doc: ":  try to find a parent gene overlapping/containing a transcript\nthat does\
    \ not have any explicit gene Parent"
  type: boolean?
  inputBinding:
    prefix: --t-adopt
- id: in_decode_url_encoded
  doc: decode url encoded characters within attributes
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_merge_close_exons
  doc: merge very close exons into a single exon (when intron size<4)
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_full_path_names
  doc: "full path to a multi-fasta file with the genomic sequences\nfor all input\
    \ mappings, OR a directory with single-fasta files\n(one per genomic sequence,\
    \ with file names matching sequence names)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_write_spliced_exons
  doc: write a fasta file with spliced exons for each transcript
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_w_add
  doc: "for the -w option, extract additional <N> bases\nboth upstream and downstream\
    \ of the transcript boundaries"
  type: string?
  inputBinding:
    prefix: --w-add
- id: in_write_spliced_cds
  doc: write a fasta file with spliced CDS for each GFF transcript
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_write_protein_file
  doc: write a protein fasta file with the translation of CDS for each record
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_w_options_write
  doc: "for -w and -x options, write in the FASTA defline all the exon\ncoordinates\
    \ projected onto the spliced sequence;"
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_y_option_use
  doc: for -y option, use '*' instead of '.' as stop codon translation
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_ensembl_gtf_gff
  doc: Ensembl GTF to GFF3 conversion (implies -F; should be used with -m)
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_chrreplace_name_mapping
  doc: "<chr_replace> is a name mapping table for converting reference\nsequence names,\
    \ having this 2-column format:\n<original_ref_ID> <new_ref_ID>"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_use_trackname_nd
  doc: use <trackname> in the 2nd column of each GFF/GTF output line
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_write_records_stdout
  doc: write the records into <outfile> instead of stdout
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_main_output_be
  doc: main output will be GTF instead of GFF3
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_bed
  doc: records in BED format instead of default GFF3
  type: long?
  inputBinding:
    prefix: --bed
- id: in_tlf
  doc: "\"transcript line format\" which is like GFF\nbut exons, CDS features and\
    \ related data are stored as GFF\nattributes in the transcript feature line, like\
    \ this:\nexoncount=N;exons=<exons>;CDSphase=<N>;CDS=<CDScoords>\n<exons> is a\
    \ comma-delimited list of exon_start-exon_end coordinates;\n<CDScoords> is CDS_start:CDS_end\
    \ coordinates or a list like <exons>"
  type: string?
  inputBinding:
    prefix: --tlf
- id: in_table
  doc: "a simple tab delimited format instead of GFF, with columns\nhaving the values\
    \ of GFF attributes given in <attrlist>; special\npseudo-attributes (prefixed\
    \ by @) are recognized:\n@id, @geneid, @chr, @start, @end, @strand, @numexons,\
    \ @exons,\n@cds, @covlen, @cdslen\nIf any of -w/-y/-x FASTA output files are enabled,\
    \ the same fields\n(excluding @id) are appended to the definition line of corresponding\n\
    FASTA records"
  type: string?
  inputBinding:
    prefix: --table
- id: in_warn_duplicate_transcript
  doc: "(warn about) duplicate transcript IDs and other potential\nproblems with the\
    \ given GFF/GTF records\n"
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gffread:0.12.1--h8b12597_0
cwlVersion: v1.1
baseCommand:
- gffread
