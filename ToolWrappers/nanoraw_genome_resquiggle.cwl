class: CommandLineTool
id: nanoraw_genome_resquiggle.cwl
inputs:
- id: in_base_call_subgroups
  doc: "FAST5 subgroup (under Analyses/[corrected-group])\nwhere individual template\
    \ and/or complement reads are\nstored. Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_two_d
  doc: "Input contains 2D reads. Equivalent to `--basecall-\nsubgroups BaseCalled_template\
    \ BaseCalled_complement`"
  type: boolean
  inputBinding:
    prefix: --2d
- id: in_graph_map_executable
  doc: "Relative or absolute path to built graphmap executable\nor command name if\
    \ globally installed."
  type: File
  inputBinding:
    prefix: --graphmap-executable
- id: in_bwa_mem_executable
  doc: "Relative or absolute path to built bwa-mem executable\nor command name if\
    \ globally installed."
  type: File
  inputBinding:
    prefix: --bwa-mem-executable
- id: in_timeout
  doc: "Timeout in seconds for the processing of a single\nread. Default: No timeout."
  type: string
  inputBinding:
    prefix: --timeout
- id: in_cpts_limit
  doc: "Maximum number of changepoints to find within a single\nindel group. (Not\
    \ setting this option can cause a\nprocess to stall and cannot be controlled by\
    \ the\ntimeout option). Default: No limit."
  type: long
  inputBinding:
    prefix: --cpts-limit
- id: in_normalization_type
  doc: "Type of normalization to apply to raw signal when\ncalculating statistics\
    \ based on new segmentation.\nShould be one of {\"median\", \"pA\", \"pA_raw\"\
    , \"none\"}.\n\"none\" will provde the raw 16-bit DAQ values as the\nraw signal\
    \ is stored. \"pA_raw\" will calculate the pA\nestimates as in the ONT events\
    \ (using offset, range\nand digitization parameters stored in the FAST5 file).\n\
    \"pA\" will first apply the \"pA_raw\" normalization\nfollowed by kmer-based correction\
    \ for pA drift as\ndescribed in the nanopolish methylation manuscript\n(this option\
    \ requires the [--pore-model-filename]\noption). \"median\" will shift by the\
    \ median of each\nreads' raw signal and scale by the MAD. Default:\nmedian"
  type: string
  inputBinding:
    prefix: --normalization-type
- id: in_pore_model_filename
  doc: "File containing kmer model parameters (level_mean and\nlevel_stdv) used in\
    \ order to compute kmer-based\ncorrected pA values. E.g. https://github.com/jts/nanop\n\
    olish/blob/master/etc/r9-models/template_median68pA.5m\ners.model"
  type: File
  inputBinding:
    prefix: --pore-model-filename
- id: in_outlier_threshold
  doc: "Number of median absolute deviation (MAD) values at\nwhich to clip the raw\
    \ signal. This can help avoid\nstrong re-segmentation artifacts from spikes in\n\
    signal. Set to negative value to disable outlier\nclipping. Default: 5"
  type: long
  inputBinding:
    prefix: --outlier-threshold
- id: in_fast_five_pattern
  doc: "A pattern to search for a subset of files within\nfast5-basedir. Note that\
    \ on the unix command line\npatterns may be expanded so it is best practice to\n\
    quote patterns."
  type: long
  inputBinding:
    prefix: --fast5-pattern
- id: in_recursive
  doc: "Search for FAST5 files within immediate sub-\ndirectories.Note that this only\
    \ searches a single\nlevel of subdirectories and only for files ending in\n.fast5.\
    \ This is equivalent to specifying\n--fast5-pattern \"*/*.fast5\"."
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_overwrite
  doc: "Overwrite previous corrected group in FAST5/HDF5 file.\n(Note this only effects\
    \ the group defined by\n--corrected-group)."
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_failed_reads_filename
  doc: "Output failed read filenames into a this file with\nassoicated error for each\
    \ read. Default: Do not store\nfailed reads."
  type: File
  inputBinding:
    prefix: --failed-reads-filename
- id: in_corrected_group
  doc: "FAST5 group to access/plot created by\ngenome_resquiggle script. Default:\n\
    RawGenomeCorrected_000"
  type: long
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_group
  doc: "FAST5 group to use for obtaining original basecalls\n(under Analyses group).\
    \ Default: Basecall_1D_000"
  type: long
  inputBinding:
    prefix: --basecall-group
- id: in_processes
  doc: 'Number of processes. Default: 2'
  type: long
  inputBinding:
    prefix: --processes
- id: in_align_processes
  doc: "Number of processes to use for aligning and parsing\noriginal basecalls. Each\
    \ process will independently\nload the genome into memory, so use caution with\n\
    larger genomes (e.g. human). Default: 1"
  type: long
  inputBinding:
    prefix: --align-processes
- id: in_align_threads_per_process
  doc: "Number of threads to use per alignment process. This\nvalue is passed to the\
    \ underlying mapper system calls.\nDefault: [--processes] / (2 * [--align-processes)]"
  type: long
  inputBinding:
    prefix: --align-threads-per-process
- id: in_re_squiggle_processes
  doc: "Number of processes to use for re-squiggling raw data.\nDefault: [--processes]\
    \ / 2"
  type: long
  inputBinding:
    prefix: --resquiggle-processes
- id: in_alignment_batch_size
  doc: "Batch size (number of reads) for each alignment call.\nNote that a new system\
    \ call to the mapper is made for\neach batch (including loading of the genome),\
    \ so it is\nadvised to use larger values for larger genomes.\nDefault: 500"
  type: long
  inputBinding:
    prefix: --alignment-batch-size
- id: in_skip_event_stdev
  doc: "Skip computation of corrected event standard\ndeviations to save (potentially\
    \ significant) time on\ncomputations."
  type: boolean
  inputBinding:
    prefix: --skip-event-stdev
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_fast_five_basedir
  doc: Directory containing fast5 files.
  type: long
  inputBinding:
    position: 0
- id: in_genome_fast_a
  doc: Path to fasta file for mapping.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_failed_reads_filename
  doc: "Output failed read filenames into a this file with\nassoicated error for each\
    \ read. Default: Do not store\nfailed reads."
  type: File
  outputBinding:
    glob: $(inputs.in_failed_reads_filename)
cwlVersion: v1.1
baseCommand:
- nanoraw
- genome_resquiggle
