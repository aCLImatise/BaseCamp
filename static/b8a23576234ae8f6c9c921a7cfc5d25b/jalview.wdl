version 1.0

task Jalview {
  input {
    Boolean? no_display
    File? props
    String? colour
    File? annotations
    File? tree
    File? features
    File? fast_a
    File? clustal
    File? pfam
    File? msf
    File? pile_up
    File? pir
    File? blc
    File? json
    File? jalview
    File? png
    File? svg
    File? html
    File? bio_j_sms_a
    File? img_map
    File? eps
    String? questionnaire
    Boolean? no_questionnaire
    String? no_news
    Boolean? no_usage_stats
    String? no_sort_by_tree
    String? jab_aws
    String? fetch_from
    File? groovy
    Boolean? open
    File? var_file
    String? output_format
    String? output_file
  }
  command <<<
    jalview \
      ~{var_file} \
      ~{output_format} \
      ~{output_file} \
      ~{if (no_display) then "-nodisplay" else ""} \
      ~{if defined(props) then ("-props " +  '"' + props + '"') else ""} \
      ~{if defined(colour) then ("-colour " +  '"' + colour + '"') else ""} \
      ~{if defined(annotations) then ("-annotations " +  '"' + annotations + '"') else ""} \
      ~{if defined(tree) then ("-tree " +  '"' + tree + '"') else ""} \
      ~{if defined(features) then ("-features " +  '"' + features + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(clustal) then ("-clustal " +  '"' + clustal + '"') else ""} \
      ~{if defined(pfam) then ("-pfam " +  '"' + pfam + '"') else ""} \
      ~{if defined(msf) then ("-msf " +  '"' + msf + '"') else ""} \
      ~{if defined(pile_up) then ("-pileup " +  '"' + pile_up + '"') else ""} \
      ~{if defined(pir) then ("-pir " +  '"' + pir + '"') else ""} \
      ~{if defined(blc) then ("-blc " +  '"' + blc + '"') else ""} \
      ~{if defined(json) then ("-json " +  '"' + json + '"') else ""} \
      ~{if defined(jalview) then ("-jalview " +  '"' + jalview + '"') else ""} \
      ~{if defined(png) then ("-png " +  '"' + png + '"') else ""} \
      ~{if defined(svg) then ("-svg " +  '"' + svg + '"') else ""} \
      ~{if defined(html) then ("-html " +  '"' + html + '"') else ""} \
      ~{if defined(bio_j_sms_a) then ("-biojsMSA " +  '"' + bio_j_sms_a + '"') else ""} \
      ~{if defined(img_map) then ("-imgMap " +  '"' + img_map + '"') else ""} \
      ~{if defined(eps) then ("-eps " +  '"' + eps + '"') else ""} \
      ~{if defined(questionnaire) then ("-questionnaire " +  '"' + questionnaire + '"') else ""} \
      ~{if (no_questionnaire) then "-noquestionnaire" else ""} \
      ~{if defined(no_news) then ("-nonews " +  '"' + no_news + '"') else ""} \
      ~{if (no_usage_stats) then "-nousagestats" else ""} \
      ~{if defined(no_sort_by_tree) then ("-nosortbytree " +  '"' + no_sort_by_tree + '"') else ""} \
      ~{if defined(jab_aws) then ("-jabaws " +  '"' + jab_aws + '"') else ""} \
      ~{if defined(fetch_from) then ("-fetchfrom " +  '"' + fetch_from + '"') else ""} \
      ~{if defined(groovy) then ("-groovy " +  '"' + groovy + '"') else ""} \
      ~{if (open) then "-open" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_display: "Run Jalview without User Interface."
    props: "Use the given Jalview properties file instead of users default."
    colour: "The colourscheme to be applied to the alignment"
    annotations: "Add precalculated annotations to the alignment."
    tree: "Load the given newick format tree file onto the alignment"
    features: "Use the given file to mark features on the alignment."
    fast_a: "Create alignment file FILE in Fasta format."
    clustal: "Create alignment file FILE in Clustal format."
    pfam: "Create alignment file FILE in PFAM format."
    msf: "Create alignment file FILE in MSF format."
    pile_up: "Create alignment file FILE in Pileup format"
    pir: "Create alignment file FILE in PIR format."
    blc: "Create alignment file FILE in BLC format."
    json: "Create alignment file FILE in JSON format."
    jalview: "Create alignment file FILE in Jalview format."
    png: "Create PNG image FILE from alignment."
    svg: "Create SVG image FILE from alignment."
    html: "Create HTML file from alignment."
    bio_j_sms_a: "Create BioJS MSA Viewer HTML file from alignment."
    img_map: "Create HTML file FILE with image map of PNG image."
    eps: "Create EPS file FILE from alignment."
    questionnaire: "Queries the given URL for information about any Jalview user questionnaires."
    no_questionnaire: "Turn off questionnaire check."
    no_news: "off check for Jalview news."
    no_usage_stats: "Turn off google analytics tracking for this session."
    no_sort_by_tree: "Enable or disable sorting of the given alignment by the given tree"
    jab_aws: "Specify URL for Jabaws services (e.g. for a local installation)."
    fetch_from: "Query nickname for features for the alignments and display them."
    groovy: "Execute groovy script in FILE, after all other arguments have been processed (if FILE is the text 'STDIN' then the file will be read from STDIN)"
    open: ""
    var_file: ""
    output_format: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}