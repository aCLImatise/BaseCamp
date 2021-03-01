version 1.0

task TEpeaksNarrow {
  input {
    String? treatment
    String? control
    Directory? output_dir
    Int? fra_glen
    String? prj_name
    Int? pval
    Int? species
    Int? g_size
    Int? num_it_r
    String? arguments
    String alignment_files
  }
  command <<<
    TEpeaks narrow \
      ~{arguments} \
      ~{alignment_files} \
      ~{if defined(treatment) then ("--treatment " +  '"' + treatment + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(output_dir) then ("--outputdir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(fra_glen) then ("--fraglen " +  '"' + fra_glen + '"') else ""} \
      ~{if defined(prj_name) then ("--prjname " +  '"' + prj_name + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(g_size) then ("--gsize " +  '"' + g_size + '"') else ""} \
      ~{if defined(num_it_r) then ("--numItr " +  '"' + num_it_r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    treatment: "IP sample ( BAM )"
    control: "Control IP samples ( BAM )"
    output_dir: "Directory to write output to"
    fra_glen: "Fragment size (default: 200)\\n--keepDup=STRING          How to deal with duplicate reads. The valid values are 'auto', 'all', or 1 (default: auto)\\n--shift=INT               Shift reads towards 3' end, if positive, or 5' end if negative. (default: 0)\\n--lmfold=INT              Lower limit of fold ratio against background to build model (default: 10)\\n--hmfold=INT              Higher limit of fold ratio against background to build model (default: 30)"
    prj_name: "Name of the prject (default: NONAME)"
    pval: "P-value cutoff (default: 1e-5)\\n--fdr=DOUBLE              False discovery rate cutoff (default: 0.05)\\n--toLarge                 Scale library size to large sample (default: off)"
    species: "Species e.g., hs (Human hg19),  mm (Mouse mm9). (default: hs)"
    g_size: "Effective genome size (default: human genome 2.7e9)\\n--threads=INT             Number of threads to use (default: 1)\\n--pileup=INT              The minuim pileup required for peaks with multi-reads (default: 20)\\n--fe=DOUBLE               The minuim fold enrichment required for peaks with multi-reads (default: 3)"
    num_it_r: "Number of iterations (default: 50)"
    arguments: ""
    alignment_files: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}