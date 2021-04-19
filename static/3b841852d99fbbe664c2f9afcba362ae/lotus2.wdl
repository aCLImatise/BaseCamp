version 1.0

task Lotus2 {
  input {
    File? mapping_file
    File? case_fastqfile_fnafile
    Directory? warning_directory_completelyremoved
    File? input_qual_file
    File? lotuscfg_config_file
    Int? sequencing_platform_pacbio
    File? barcode
    File? sdm_option_file
    Directory? tmpdir
    Int? threads
    Int? tolerate_corrupt_fq
    Int? verbosity
    File? tax_only
    Int? keep_tmp_files
    Int? save_demultiplex
    Int? keep_off_targets
    Int? redo_tax_only
    Int? keep_un_class_fied
    Int? rdp_thr
    Int? ref_db
    Int? green_genes_species
    Boolean? build_phylo
    Int? u_tax_thr
    Int? tax_group
    Int? tax_aligner
    Int? its_x_partial
    Int? use_best_blast_hit_only
    File? tax_four_ref_db
    Int? lulu
    Int? lca_cover
    Int? its_x
    Int? lca_frac
    Int? amplicon_type
    File? end_rem
    Int? swarm_distance
    Int? flash_param
    Int? x_talk
    Int? read_overlap
    Int? chim_skew
    Int? deactivate_chimera_check
    Boolean? count_chimeras
    Int? clustering
    Int? id
  }
  command <<<
    lotus2 \
      ~{if defined(mapping_file) then ("-map " +  '"' + mapping_file + '"') else ""} \
      ~{if defined(case_fastqfile_fnafile) then ("-i " +  '"' + case_fastqfile_fnafile + '"') else ""} \
      ~{if defined(warning_directory_completelyremoved) then ("-o " +  '"' + warning_directory_completelyremoved + '"') else ""} \
      ~{if defined(input_qual_file) then ("-q " +  '"' + input_qual_file + '"') else ""} \
      ~{if defined(lotuscfg_config_file) then ("-c " +  '"' + lotuscfg_config_file + '"') else ""} \
      ~{if defined(sequencing_platform_pacbio) then ("-p " +  '"' + sequencing_platform_pacbio + '"') else ""} \
      ~{if defined(barcode) then ("-barcode " +  '"' + barcode + '"') else ""} \
      ~{if defined(sdm_option_file) then ("-s " +  '"' + sdm_option_file + '"') else ""} \
      ~{if defined(tmpdir) then ("-tmpDir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tolerate_corrupt_fq) then ("-tolerateCorruptFq " +  '"' + tolerate_corrupt_fq + '"') else ""} \
      ~{if defined(verbosity) then ("-verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(tax_only) then ("-taxOnly " +  '"' + tax_only + '"') else ""} \
      ~{if defined(keep_tmp_files) then ("-keepTmpFiles " +  '"' + keep_tmp_files + '"') else ""} \
      ~{if defined(save_demultiplex) then ("-saveDemultiplex " +  '"' + save_demultiplex + '"') else ""} \
      ~{if defined(keep_off_targets) then ("-keepOfftargets " +  '"' + keep_off_targets + '"') else ""} \
      ~{if defined(redo_tax_only) then ("-redoTaxOnly " +  '"' + redo_tax_only + '"') else ""} \
      ~{if defined(keep_un_class_fied) then ("-keepUnclassfied " +  '"' + keep_un_class_fied + '"') else ""} \
      ~{if defined(rdp_thr) then ("-rdp_thr " +  '"' + rdp_thr + '"') else ""} \
      ~{if defined(ref_db) then ("-refDB " +  '"' + ref_db + '"') else ""} \
      ~{if defined(green_genes_species) then ("-greengenesSpecies " +  '"' + green_genes_species + '"') else ""} \
      ~{if (build_phylo) then "-buildPhylo" else ""} \
      ~{if defined(u_tax_thr) then ("-utax_thr " +  '"' + u_tax_thr + '"') else ""} \
      ~{if defined(tax_group) then ("-tax_group " +  '"' + tax_group + '"') else ""} \
      ~{if defined(tax_aligner) then ("-taxAligner " +  '"' + tax_aligner + '"') else ""} \
      ~{if defined(its_x_partial) then ("-itsx_partial " +  '"' + its_x_partial + '"') else ""} \
      ~{if defined(use_best_blast_hit_only) then ("-useBestBlastHitOnly " +  '"' + use_best_blast_hit_only + '"') else ""} \
      ~{if defined(tax_four_ref_db) then ("-tax4refDB " +  '"' + tax_four_ref_db + '"') else ""} \
      ~{if defined(lulu) then ("-lulu " +  '"' + lulu + '"') else ""} \
      ~{if defined(lca_cover) then ("-LCA_cover " +  '"' + lca_cover + '"') else ""} \
      ~{if defined(its_x) then ("-ITSx " +  '"' + its_x + '"') else ""} \
      ~{if defined(lca_frac) then ("-LCA_frac " +  '"' + lca_frac + '"') else ""} \
      ~{if defined(amplicon_type) then ("-amplicon_type " +  '"' + amplicon_type + '"') else ""} \
      ~{if defined(end_rem) then ("-endRem " +  '"' + end_rem + '"') else ""} \
      ~{if defined(swarm_distance) then ("-swarm_distance " +  '"' + swarm_distance + '"') else ""} \
      ~{if defined(flash_param) then ("-flash_param " +  '"' + flash_param + '"') else ""} \
      ~{if defined(x_talk) then ("-xtalk " +  '"' + x_talk + '"') else ""} \
      ~{if defined(read_overlap) then ("-readOverlap " +  '"' + read_overlap + '"') else ""} \
      ~{if defined(chim_skew) then ("-chim_skew " +  '"' + chim_skew + '"') else ""} \
      ~{if defined(deactivate_chimera_check) then ("-deactivateChimeraCheck " +  '"' + deactivate_chimera_check + '"') else ""} \
      ~{if (count_chimeras) then "-count_chimeras" else ""} \
      ~{if defined(clustering) then ("-clustering " +  '"' + clustering + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lotus2:2.01--hdfd78af_1"
  }
  parameter_meta {
    mapping_file: "Mapping file"
    case_fastqfile_fnafile: "In case that fastqFile or fnaFile and qualFile were\\nspecified in the mapping file, this has to be the\\ndirectory with input files"
    warning_directory_completelyremoved: "Warning: The output directory will be completely\\nremoved at the beginning of the LotuS2 run. Please\\nensure this is a new directory or contains only\\ndisposable data!"
    input_qual_file: "input qual file (not defined in case of fastq or\\ninput directory)"
    lotuscfg_config_file: "LotuS.cfg, config file with program paths"
    sequencing_platform_pacbio: "sequencing platform: PacBio, 454, miSeq or hiSeq"
    barcode: "Filepath to fastq formated file with barcodes (this\\nis a processed mi/hiSeq format). The complementary\\noption in a mapping file would be the column\\n\\\"MIDfqFile\\\""
    sdm_option_file: "SDM option file, defaults to \\\\\"sdm_options.txt\\\\\" in\\ncurrent dir"
    tmpdir: "temporary directory used to save intermediate results"
    threads: "number of threads to be used"
    tolerate_corrupt_fq: "(1) Continue reading fastq files, even if single\\nentries are incomplete (e.g. half of qual values\\nmissing). (0) Abort lotus run, if fastq file is\\ncorrupt. (Default: 0)"
    verbosity: "Level of verbosity from printing all program calls\\nand program output (3) to not even printing errors\\n(0). Default: 1"
    tax_only: "Skip most of the lotus pipeline and only run a\\ntaxonomic classification on a fasta file. E.g.\\n./lotus2.pl -taxOnly <some16S.fna> -refDB SLV"
    keep_tmp_files: "(1) save extra tmp files like chimeric OTUs or the\\nraw blast output in extra dir. (0) do not save these.\\n(Default: 0)"
    save_demultiplex: "(1) Saves all demultiplexed reads (unfiltered) in the\\n[outputdir]/demultiplexed folder, for easier data\\nupload. (2) Only saves quality filtered demultiplexed\\nreads and continues LotuS2 run subsequently. (3) Saves\\ndemultiplexed file into a single fq, saving sample ID\\nin fastq/a header. (0) No demultiplexed reads are\\nsaved. (Default: 0)"
    keep_off_targets: "(0)?!?: keep offtarget hits against offtargetDB in\\noutput fasta and otu matrix, default 0"
    redo_tax_only: "(1) Only redo the taxonomic assignments (useful for\\nreplacing a DB used on a finished lotus run). (0)\\nNormal lotus run. (Default: 0)"
    keep_un_class_fied: "(1) Includes unclassified OTUs (i.e. no match in\\nRDP/Blast database) in OTU and taxa abundance matrix\\ncalculations. (0) does not take these OTUs into\\naccount. (Default: 0)"
    rdp_thr: "Confidence thresshold for RDP.(Default: 0.8)"
    ref_db: "(SLV) Silva LSU (23/28S) or SSU (16/18S), (GG\\ngreengenes (only SSU available), (HITdb) (SSU, human\\ngut specific), (PR2) LSU spezialized on Ocean\\nenvironmentas, (UNITE) ITS fungi specific, (beetax)\\nbee gut specific database and tax names. \\nDecide\\nwhich reference DB will be used for a similarity based\\ntaxonomy annotation. Databases can be combined, with\\nthe first having the highest prioirty. E.g. \\\"PR2,SLV\\\"\\nwould first use PR2 to assign OTUs and all unaasigned\\nOTUs would be searched for with SILVA, given that\\n\\\\\"-amplicon_type LSU\\\\\" was set. Can also be a custom\\nfasta formatted database: in this case provide the\\npath to the fasta file as well as the path to the\\ntaxonomy for the sequences using -tax4refDB. See also\\nonline help on how to create a custom DB. (Default:\\nGG)"
    green_genes_species: "(1) Create greengenes output labels instead of OTU\\n(to be used with greengenes specific programs such as\\nBugBase). (Default: 0)"
    build_phylo: "<0,1,2,>    (0) do not build OTU phylogeny; (1) use fasttree2;\\n(2) use iqtree2. (Default: 1)"
    u_tax_thr: "Confidence thresshold for UTAX. (Default: 0.8)"
    tax_group: "(bacteria) bacterial 16S rDNA annnotation, (fungi)\\nfungal 18S/23S/ITS annotation. (Default: bacteria)"
    tax_aligner: "Previously doBlast. (0) deavtivated (just use RDP);\\n(1) or (blast) use Blast; (2) or (lambda) use LAMBDA\\nto search against a 16S reference database for\\ntaxonomic profiling of OTUs; (3) or (utax): use UTAX\\nwith custom databases; (4) or (vsearch) use VSEARCH to\\nalign OTUs to custom databases; (5) or (usearch) use\\nUSEARCH to align OTUs to custom databases. (Default:\\n0)"
    its_x_partial: "Parameters for ITSx to extract partial (%) ITS\\nregions as well. (0) deactivate. (Default: 0)"
    use_best_blast_hit_only: "(1) do not use LCA (lowest common ancestor) to\\ndetermine most likely taxnomic level (not\\nrecommended), instead just use the best blast hit. (0)\\nLCA algorithm. (Default: 0)"
    tax_four_ref_db: "In conjunction with a custom fasta file provided to\\nargument -refDB, this file contains for each fasta\\nentry in the reference DB a taxonomic annotation\\nstring, with the same number of taxonomic levels for\\neach, tab separated."
    lulu: "(1) use LULU (https://github.com/tobiasgf/lulu) to\\nmerge OTUs based on their occurence. (Default: 1)"
    lca_cover: "Min horizontal coverage of an OTU sequence against\\nref DB. (Default: 0.5)"
    its_x: "(1) use ITSx to only retain OTUs fitting to ITS1/ITS2\\nhmm models; (0) deactivate. (Default: 1)"
    lca_frac: "Min fraction of reads with identical taxonomy.\\n(Default: 0.9)"
    amplicon_type: "(LSU) large subunit (23S/28S) or (SSU) small subunit\\n(16S/18S). (Default: SSU)"
    end_rem: "DNA sequence, usually reverse primer or reverse\\nadaptor; all sequence beyond this point will be\\nremoved from OTUs. This is redundant with the\\n\\\"ReversePrimer\\\" option from the mapping file, but\\ngives more control (e.g. there is a problem with\\nadaptors in the OTU output). (Default: \\\"\\\")"
    swarm_distance: "Clustering threshold for OTUs when using swarm\\nclustering. (Default: 1)"
    flash_param: "custom flash parameters, since this contains spaces\\nthe command needs to be in parentheses: e.g.\\n-flash_param \\\"-r 150 -s 20\\\". Note that this option\\ncompletely replaces the default -m and -M flash\\noptions (i.e. need to be reinserted, if wanted)]"
    x_talk: "(1) check for crosstalk. Note that this requires in\\nmost cases 64bit usearch. (Default: 0)"
    read_overlap: "The maximum number of basepairs that two reads are\\noverlapping. (Default: 300)"
    chim_skew: "Skew in chimeric fragment abundance (uchime option).\\n(Default: 2)"
    deactivate_chimera_check: "(0) do OTU chimera checks. (1) no chimera check at\\nall. (2) Deactivate deNovo chimera check. (3)\\nDeactivate ref based chimera check. (Default: 0)"
    count_chimeras: "Minimum size of dereplicated clustered, one form of\\nnoise removal. Can be complex terms like \\\"10:1,3:3\\\" ->\\nmeaning at least 10x in 1 sample or 3x in 3 different\\nsamples. (Default: 2)"
    clustering: "Sequence clustering algorithm: (1) UPARSE, (2) swarm,\\n(3) cd-hit, (6) unoise3, (7) dada2. Short keyword or\\nnumber can be used to indicate clustering (Default:\\nuparse)"
    id: "Clustering threshold for OTUs. (Default: 0.97)"
  }
  output {
    File out_stdout = stdout()
    Directory out_warning_directory_completelyremoved = "${in_warning_directory_completelyremoved}"
    File out_end_rem = "${in_end_rem}"
  }
}