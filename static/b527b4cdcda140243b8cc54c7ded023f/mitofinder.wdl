version 1.0

task Mitofinder {
  input {
    Boolean? mega_hit
    Boolean? i_dba
    Boolean? meta_spades
    String? trna_annotation
    String? seq_id
    Int? paired_end_one
    Int? paired_end_two
    File? single_end
    File? assembly
    Int? max_memory
    Int? length
    Int? processors
    File? refseq
    Float? blast_eval
    Int? n_walk
    Directory? override
    Boolean? adjust_direction
    Boolean? ignore
    Boolean? new_genes
    Boolean? allow_intron
    Boolean? num_t
    Int? intron_size
    Int? max_contig
    Boolean? cds_merge
    File? out_gb
    Int? blast_identity_nucl
    Int? blast_identity_prot
    Int? blast_size
    Int? circular_size
    Int? circular_offset
    Int? organism
    Boolean? example
    Boolean? citation
    String format_dot
    Int _maxcontigsize_maxcontigsize
    Int _renamecontig_rename
  }
  command <<<
    mitofinder \
      ~{format_dot} \
      ~{_maxcontigsize_maxcontigsize} \
      ~{_renamecontig_rename} \
      ~{if (mega_hit) then "--megahit" else ""} \
      ~{if (i_dba) then "--idba" else ""} \
      ~{if (meta_spades) then "--metaspades" else ""} \
      ~{if defined(trna_annotation) then ("--tRNA-annotation " +  '"' + trna_annotation + '"') else ""} \
      ~{if defined(seq_id) then ("--seqid " +  '"' + seq_id + '"') else ""} \
      ~{if defined(paired_end_one) then ("--Paired-end1 " +  '"' + paired_end_one + '"') else ""} \
      ~{if defined(paired_end_two) then ("--Paired-end2 " +  '"' + paired_end_two + '"') else ""} \
      ~{if defined(single_end) then ("--Single-end " +  '"' + single_end + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(max_memory) then ("--max-memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(blast_eval) then ("--blast-eval " +  '"' + blast_eval + '"') else ""} \
      ~{if defined(n_walk) then ("--nwalk " +  '"' + n_walk + '"') else ""} \
      ~{if (override) then "--override" else ""} \
      ~{if (adjust_direction) then "--adjust-direction" else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (new_genes) then "--new-genes" else ""} \
      ~{if (allow_intron) then "--allow-intron" else ""} \
      ~{if (num_t) then "--numt" else ""} \
      ~{if defined(intron_size) then ("--intron-size " +  '"' + intron_size + '"') else ""} \
      ~{if defined(max_contig) then ("--max-contig " +  '"' + max_contig + '"') else ""} \
      ~{if (cds_merge) then "--cds-merge" else ""} \
      ~{if (out_gb) then "--out-gb" else ""} \
      ~{if defined(blast_identity_nucl) then ("--blast-identity-nucl " +  '"' + blast_identity_nucl + '"') else ""} \
      ~{if defined(blast_identity_prot) then ("--blast-identity-prot " +  '"' + blast_identity_prot + '"') else ""} \
      ~{if defined(blast_size) then ("--blast-size " +  '"' + blast_size + '"') else ""} \
      ~{if defined(circular_size) then ("--circular-size " +  '"' + circular_size + '"') else ""} \
      ~{if defined(circular_offset) then ("--circular-offset " +  '"' + circular_offset + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if (example) then "--example" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitofinder:1.4--py27h516909a_0"
  }
  parameter_meta {
    mega_hit: "Use Megahit for assembly. (Default)"
    i_dba: "Use IDBA-UD for assembly."
    meta_spades: "Use MetaSPAdes for assembly."
    trna_annotation: "\\\"arwen\\\"/\\\"mitfi\\\"/\\\"trnascan\\\" tRNA annotater to use.\\nDefault = mitfi"
    seq_id: "Sequence ID to be used throughout the process"
    paired_end_one: "File with forward paired-end reads"
    paired_end_two: "File with reverse paired-end reads"
    single_end: "File with single-end reads"
    assembly: "File with your own assembly"
    max_memory: "max memory to use in Go (MEGAHIT or MetaSPAdes)"
    length: "Shortest contig length to be used (MEGAHIT). Default =\\n100"
    processors: "Number of threads Mitofinder will use at most."
    refseq: "Reference mitochondrial genome in GenBank format\\n(.gb)."
    blast_eval: "e-value of blast program used for contig\\nidentification and annotation. Default = 0.00001"
    n_walk: "Maximum number of codon steps to be tested on each\\nsize of the gene to find the start and stop codon\\nduring the annotation step. Default = 5 (30 bases)"
    override: "This option forces MitoFinder to override the previous\\noutput directory for the selected assembler."
    adjust_direction: "This option tells MitoFinder to adjust the direction\\nof selected contig(s) (given the reference)."
    ignore: "This option tells MitoFinder to ignore the non-\\nstandart mitochondrial genes."
    new_genes: "This option tells MitoFinder to try to annotate the\\nnon-standard animal mitochondrial genes (e.g. rps3 in\\nfungi). If several references are used, make sure the\\nnon-standard genes have the same names in the several\\nreferences"
    allow_intron: "This option tells MitoFinder to search for genes with\\nintrons. Recommendation : Use it on mitochondrial\\ncontigs previously found with MitoFinder without this\\noption."
    num_t: "This option tells MitoFinder to search for both\\nmitochondrial genes and NUMTs. Recommendation : Use it\\non nuclear contigs previously found with MitoFinder\\nwithout this option."
    intron_size: "Size of intron allowed. Default = 5000 bp"
    max_contig: "Maximum number of contigs matching to the reference to\\nkeep. Default = 0 (unlimited)"
    cds_merge: "This option tells MitoFinder to not merge the exons in\\nthe NT and AA fasta files."
    out_gb: "Do not create annotation output file in GenBank"
    blast_identity_nucl: "Nucleotide identity percentage for a hit to be\\nretained. Default = 50"
    blast_identity_prot: "Amino acid identity percentage for a hit to be\\nretained. Default = 40"
    blast_size: "Percentage of overlap in blast best hit to be\\nretained. Default = 30"
    circular_size: "Size to consider when checking for circularization.\\nDefault = 45"
    circular_offset: "Offset from start and finish to consider when looking\\nfor circularization. Default = 200"
    organism: "Organism genetic code following NCBI table (integer):\\n1. The Standard Code 2. The Vertebrate Mitochondrial\\nCode 3. The Yeast Mitochondrial Code 4. The Mold,\\nProtozoan, and Coelenterate Mitochondrial Code and the\\nMycoplasma/Spiroplasma Code 5. The Invertebrate\\nMitochondrial Code 6. The Ciliate, Dasycladacean and\\nHexamita Nuclear Code 9. The Echinoderm and Flatworm\\nMitochondrial Code 10. The Euplotid Nuclear Code 11.\\nThe Bacterial, Archaeal and Plant Plastid Code 12. The\\nAlternative Yeast Nuclear Code 13. The Ascidian\\nMitochondrial Code 14. The Alternative Flatworm\\nMitochondrial Code 16. Chlorophycean Mitochondrial\\nCode 21. Trematode Mitochondrial Code 22. Scenedesmus\\nobliquus Mitochondrial Code 23. Thraustochytrium\\nMitochondrial Code 24. Pterobranchia Mitochondrial\\nCode 25. Candidate Division SR1 and Gracilibacteria\\nCode"
    example: "Print getting started examples"
    citation: "How to cite MitoFinder"
    format_dot: "--min-contig-size MINCONTIGSIZE"
    _maxcontigsize_maxcontigsize: "--max-contig-size MAXCONTIGSIZE"
    _renamecontig_rename: "--rename-contig RENAME"
  }
  output {
    File out_stdout = stdout()
    Directory out_override = "${in_override}"
    File out_out_gb = "${in_out_gb}"
  }
}