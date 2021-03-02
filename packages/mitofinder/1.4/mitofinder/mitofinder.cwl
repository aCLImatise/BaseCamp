class: CommandLineTool
id: mitofinder.cwl
inputs:
- id: in_mega_hit
  doc: Use Megahit for assembly. (Default)
  type: boolean?
  inputBinding:
    prefix: --megahit
- id: in_i_dba
  doc: Use IDBA-UD for assembly.
  type: boolean?
  inputBinding:
    prefix: --idba
- id: in_meta_spades
  doc: Use MetaSPAdes for assembly.
  type: boolean?
  inputBinding:
    prefix: --metaspades
- id: in_trna_annotation
  doc: "\"arwen\"/\"mitfi\"/\"trnascan\" tRNA annotater to use.\nDefault = mitfi"
  type: string?
  inputBinding:
    prefix: --tRNA-annotation
- id: in_seq_id
  doc: Sequence ID to be used throughout the process
  type: string?
  inputBinding:
    prefix: --seqid
- id: in_paired_end_one
  doc: File with forward paired-end reads
  type: long?
  inputBinding:
    prefix: --Paired-end1
- id: in_paired_end_two
  doc: File with reverse paired-end reads
  type: long?
  inputBinding:
    prefix: --Paired-end2
- id: in_single_end
  doc: File with single-end reads
  type: File?
  inputBinding:
    prefix: --Single-end
- id: in_assembly
  doc: File with your own assembly
  type: File?
  inputBinding:
    prefix: --assembly
- id: in_max_memory
  doc: max memory to use in Go (MEGAHIT or MetaSPAdes)
  type: long?
  inputBinding:
    prefix: --max-memory
- id: in_length
  doc: "Shortest contig length to be used (MEGAHIT). Default =\n100"
  type: long?
  inputBinding:
    prefix: --length
- id: in_processors
  doc: Number of threads Mitofinder will use at most.
  type: long?
  inputBinding:
    prefix: --processors
- id: in_refseq
  doc: "Reference mitochondrial genome in GenBank format\n(.gb)."
  type: File?
  inputBinding:
    prefix: --refseq
- id: in_blast_eval
  doc: "e-value of blast program used for contig\nidentification and annotation. Default\
    \ = 0.00001"
  type: double?
  inputBinding:
    prefix: --blast-eval
- id: in_n_walk
  doc: "Maximum number of codon steps to be tested on each\nsize of the gene to find\
    \ the start and stop codon\nduring the annotation step. Default = 5 (30 bases)"
  type: long?
  inputBinding:
    prefix: --nwalk
- id: in_override
  doc: "This option forces MitoFinder to override the previous\noutput directory for\
    \ the selected assembler."
  type: Directory?
  inputBinding:
    prefix: --override
- id: in_adjust_direction
  doc: "This option tells MitoFinder to adjust the direction\nof selected contig(s)\
    \ (given the reference)."
  type: boolean?
  inputBinding:
    prefix: --adjust-direction
- id: in_ignore
  doc: "This option tells MitoFinder to ignore the non-\nstandart mitochondrial genes."
  type: boolean?
  inputBinding:
    prefix: --ignore
- id: in_new_genes
  doc: "This option tells MitoFinder to try to annotate the\nnon-standard animal mitochondrial\
    \ genes (e.g. rps3 in\nfungi). If several references are used, make sure the\n\
    non-standard genes have the same names in the several\nreferences"
  type: boolean?
  inputBinding:
    prefix: --new-genes
- id: in_allow_intron
  doc: "This option tells MitoFinder to search for genes with\nintrons. Recommendation\
    \ : Use it on mitochondrial\ncontigs previously found with MitoFinder without\
    \ this\noption."
  type: boolean?
  inputBinding:
    prefix: --allow-intron
- id: in_num_t
  doc: "This option tells MitoFinder to search for both\nmitochondrial genes and NUMTs.\
    \ Recommendation : Use it\non nuclear contigs previously found with MitoFinder\n\
    without this option."
  type: boolean?
  inputBinding:
    prefix: --numt
- id: in_intron_size
  doc: Size of intron allowed. Default = 5000 bp
  type: long?
  inputBinding:
    prefix: --intron-size
- id: in_max_contig
  doc: "Maximum number of contigs matching to the reference to\nkeep. Default = 0\
    \ (unlimited)"
  type: long?
  inputBinding:
    prefix: --max-contig
- id: in_cds_merge
  doc: "This option tells MitoFinder to not merge the exons in\nthe NT and AA fasta\
    \ files."
  type: boolean?
  inputBinding:
    prefix: --cds-merge
- id: in_out_gb
  doc: Do not create annotation output file in GenBank
  type: File?
  inputBinding:
    prefix: --out-gb
- id: in_blast_identity_nucl
  doc: "Nucleotide identity percentage for a hit to be\nretained. Default = 50"
  type: long?
  inputBinding:
    prefix: --blast-identity-nucl
- id: in_blast_identity_prot
  doc: "Amino acid identity percentage for a hit to be\nretained. Default = 40"
  type: long?
  inputBinding:
    prefix: --blast-identity-prot
- id: in_blast_size
  doc: "Percentage of overlap in blast best hit to be\nretained. Default = 30"
  type: long?
  inputBinding:
    prefix: --blast-size
- id: in_circular_size
  doc: "Size to consider when checking for circularization.\nDefault = 45"
  type: long?
  inputBinding:
    prefix: --circular-size
- id: in_circular_offset
  doc: "Offset from start and finish to consider when looking\nfor circularization.\
    \ Default = 200"
  type: long?
  inputBinding:
    prefix: --circular-offset
- id: in_organism
  doc: "Organism genetic code following NCBI table (integer):\n1. The Standard Code\
    \ 2. The Vertebrate Mitochondrial\nCode 3. The Yeast Mitochondrial Code 4. The\
    \ Mold,\nProtozoan, and Coelenterate Mitochondrial Code and the\nMycoplasma/Spiroplasma\
    \ Code 5. The Invertebrate\nMitochondrial Code 6. The Ciliate, Dasycladacean and\n\
    Hexamita Nuclear Code 9. The Echinoderm and Flatworm\nMitochondrial Code 10. The\
    \ Euplotid Nuclear Code 11.\nThe Bacterial, Archaeal and Plant Plastid Code 12.\
    \ The\nAlternative Yeast Nuclear Code 13. The Ascidian\nMitochondrial Code 14.\
    \ The Alternative Flatworm\nMitochondrial Code 16. Chlorophycean Mitochondrial\n\
    Code 21. Trematode Mitochondrial Code 22. Scenedesmus\nobliquus Mitochondrial\
    \ Code 23. Thraustochytrium\nMitochondrial Code 24. Pterobranchia Mitochondrial\n\
    Code 25. Candidate Division SR1 and Gracilibacteria\nCode"
  type: long?
  inputBinding:
    prefix: --organism
- id: in_example
  doc: Print getting started examples
  type: boolean?
  inputBinding:
    prefix: --example
- id: in_citation
  doc: How to cite MitoFinder
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_format_dot
  doc: --min-contig-size MINCONTIGSIZE
  type: string
  inputBinding:
    position: 0
- id: in__maxcontigsize_maxcontigsize
  doc: --max-contig-size MAXCONTIGSIZE
  type: long
  inputBinding:
    position: 0
- id: in__renamecontig_rename
  doc: --rename-contig RENAME
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_override
  doc: "This option forces MitoFinder to override the previous\noutput directory for\
    \ the selected assembler."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_override)
- id: out_out_gb
  doc: Do not create annotation output file in GenBank
  type: File?
  outputBinding:
    glob: $(inputs.in_out_gb)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mitofinder:1.4--py27h516909a_0
cwlVersion: v1.1
baseCommand:
- mitofinder
