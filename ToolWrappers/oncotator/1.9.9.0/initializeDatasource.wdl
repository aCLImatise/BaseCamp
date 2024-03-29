version 1.0

task InitializeDatasource {
  input {
    String? ds_type
    File? ds_file
    String? name
    Directory? db_dir
    Directory? ds_folder_name
    String? genome_build
    String? index_columns
    String? annotation_columns
    String? match_mode
  }
  command <<<
    initializeDatasource \
      ~{if defined(ds_type) then ("--ds_type " +  '"' + ds_type + '"') else ""} \
      ~{if defined(ds_file) then ("--ds_file " +  '"' + ds_file + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(db_dir) then ("--dbDir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(ds_folder_name) then ("--ds_foldername " +  '"' + ds_folder_name + '"') else ""} \
      ~{if defined(genome_build) then ("--genome_build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(index_columns) then ("--index_columns " +  '"' + index_columns + '"') else ""} \
      ~{if defined(annotation_columns) then ("--annotation_columns " +  '"' + annotation_columns + '"') else ""} \
      ~{if defined(match_mode) then ("--match_mode " +  '"' + match_mode + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ds_type: "datasource type.  Type of datasource to create."
    ds_file: "datasource filename.  Headers must be on the first line.  This is the source file that contains annotation data."
    name: "datasource name. Plain name for the datasource.  E.g. 'MutSig_Published_Results'"
    db_dir: "Main datasource directory that contains other datasources.  I.e. the destination directory for the newly created datasource."
    ds_folder_name: "Name of the folder that should appear in dbDir"
    genome_build: "Genome build.  For example, hg19."
    index_columns: "Comma separated list of index columns.  MUST be the name of the columns and each row must have unique values across all index columns."
    annotation_columns: "Comma separated list of annotation columns. MUST be the subset of the columns.  This (optional) parameter is specified for indexed_tsv only."
    match_mode: "Mode to use when annotating.  This parameter ought to be specified for indexed_tsv and indexed_vcf only [default: exact].\\nDetailed parameter information:\\ndatasource type  --\\n\\\"gene_tsv\\\" -- gene indexed file.  gene must be a Hugo Symbol.\\nTSVs must:\\n1) have a single column for the Hugo Symbol\\n2) have column names on the first line.\\nTODO: Support prefix comment lines starting with '#'\\n\\\"gp_tsv\\\" -- tsv file referenced by genome position.\\nTSVs must:\\n1) have the column names on the first line.\\nTODO: Support prefix comment lines starting with '#'\\n2) have three distinct columns for chromosome, start position, and end position.  Note that the names of these columns are specified in the\\ngenomic position columns (see the command line example below)\\n3) tsv --> tab separated values, so the file must be a table of tab-separated values with the same number of values on every row.\\n\\\"gpp_tsv\\\" -- tsv file referenced by gene and protein position.\\nTSVs must:\\n1) have the column names on the first line.\\nTODO: Support prefix comment lines starting with '#'\\n2) have three distinct columns for gene, start AA position, and end AA position.  Note that the names of these columns are specified in the\\ngene protein position columns (see the command line example below)\\n3) tsv --> tab separated values, so the file must be a table of tab-separated values with the same number of values on every row.\\n\\\"transcript_tsv\\\" -- tsv file referenced by transcript_id\\nTSV has the same requirements as gene_tsv, except that the single column must be for transcript_id.\\nNote:  This is inherently coupled with the transcript providing datasource used.\\n\\\"indexed_tsv\\\" -- tsv file referenced by chromosome, start position and end position\\nTSVs must:\\n1) have the column names on the first line.\\nTODO: Support prefix comment lines starting with '#'\\n2) have three distinct columns for chromosome, start position, and end position.  Note that the names of these columns are specified in the\\nchromosome, start and end positions columns (see the command line example below)\\n3) tsv --> tab separated values, so the file must be a table of tab-separated values with the same number of values on every row.\\n\\\"indexed_vcf\\\" -- vcf or tabix indexed vcf file referenced by chromosome and position.\\ndatasource filename -- input data file.  In the case of tabix_gp_tsv, it would be the source tsv file.\\nname -- arbitrary name for the datasource.  This will be the folder moved into the the destination db dir.  Must be unique from other datasources.\\nThis will be a prefix on all annotations from this datasource.\\nE.g. CancerGeneCensus\\nversion -- version of the datasource.  This should be the version of the data itself, such as '3.0' for Gaf 3.0\\ndestination database directory -- an Oncotator database directory.\\ndestination datasource directory -- directory name that this datasource should have.  E.g. cancer_gene_census\\ngenome_build -- The genome build.  E.g. hg19\\nindex columns -- the columns that are indexed.\\nFor gene_tsv, this would be a single column name for the Hugo_Symbol, e.g. \\\"Symbol\\\"\\nFor gpp_tsv, this MUST be a triple specifying gene, AA start, and AA end.  For a single amino acid, start should equal end.\\nFor indexed_tsv, this MUST be either a triple, specifying chromosome, start and end, or a quintuple, sepcifying chromosome, start, end, reference and alternate.\\nmatch mode -- The type of annotation mode for indels when annotating with indexed tsvs and vcfs. Select either exact, overlap or avg.\\nFor exact, annotations are only added when the database record is an exact match for the input indel.\\nFor overlap, annotations from all the database records that span the length of the indel are added. The annotated values are pipe delimited.\\nFor average, annotations from all the database records that span the length of the indel are averaged. In cases where the annotation is not of type float or int, average switches to overlap mode.\\nannotation columns -- comma separated list of column names that are a subset of columns (used for indexed_tsv, only)\\nExample usages:\\n# Create the abridged cancer gene census datasource as a generic tsv, using the Symbol column as the gene column\\npython initializeDataSource.py --ds_type gene_tsv --ds_file CancerGeneCensus_Table_1_full_2012-03-15_trim.txt --name CGC --version full_2012_03_15 --dbDir ~/oncotest --ds_foldername cgc --genome_build hg19 --index_columns Symbol\\n# Create a datasource for ORegAnno (a generic genome position tsv)\\npython initializeDataSource.py --ds_type gp_tsv --ds_file oreganno_trim.hg19.txt --name ORegAnno --version \\\"UCSC Track\\\" --dbDir ~/oncotest oreganno --genome_build hg19 --index_columns hg19.oreganno.chrom,hg19.oreganno.chromStart,hg19.oreganno.chromEnd\\n# Create a MutSig Published Results datasource (a gene tsv) and put it into ~/oncotest/mutsig.\\npython initializeDataSource.py --ds_type gene_tsv --ds_file mutsig_results.import.20110905.txt --name \\\"MutSig Published Results\\\" --version \\\"20110905\\\" --dbDir ~/oncotest mutsig --genome_build hg19 --index_columns gene\\n# Create a protein position lookup datasource\\ninitializeDatasource --ds_type gpp_tsv --ds_file uniprot_protein_seq_tsv.out --name UniProt_AA --version 2011_09 --dbDir ~/oncotest uniprot_AA_annotations --genome_build hg19 --index_columns gene,startAA,endAA\\n# Create a datasource using Exome Seq. Project (ESP) coverage data that is in tsv format\\ninitializeDatasource --ds_type indexed_tsv --ds_file ESP6500SI-V2.coverage.txt --name ESP --version 6500SI-V2 --dbDir ~/oncotest_ESP6500SI-V2_coverage --genome_build hg19 --match_mode avg --ds_foldername ESP6500SI-V2_coverage_avg --annotation_columns Chromosome,Position,TotalSamplesCovered,AvgSampleReadDepth,TotalEAsamplesCovered,AvgEAsampleReadDepth,TotalAAsamplesCovered,AvgAAsampleReadDepth,TotalChromosomesCovered,TotalEAchromosomesCovered,TotalAAchromosomesCovered --index_columns Chromosome,Position,Position\\n# Create a datasource using Exome Seq. Project (ESP) data that is in variant call format (VCF)\\ninitializeDatasource --ds_type indexed_vcf --ds_file ESP6500SI-V2.vcf --name ESP --version 6500SI-V2 --dbDir ~/oncotest_ESP6500SI-V2 --genome_build hg19 --match_mode exact --ds_foldername ~/ESP6500SI-V2_exact\\n"
  }
  output {
    File out_stdout = stdout()
  }
}