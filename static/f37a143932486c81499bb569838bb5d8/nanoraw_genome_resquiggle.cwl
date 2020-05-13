class: CommandLineTool
id: nanoraw_genome_resquiggle.cwl
inputs:
- id: fast5_basedir
  doc: Directory containing fast5 files.
  type: string
  inputBinding:
    position: 0
- id: genome_fast_a
  doc: Path to fasta file for mapping.
  type: string
  inputBinding:
    position: 1
- id: graph_map_executable
  doc: Relative or absolute path to built graphmap executable or command name if globally
    installed.
  type: string
  inputBinding:
    prefix: --graphmap-executable
- id: bwa_mem_executable
  doc: Relative or absolute path to built bwa-mem executable or command name if globally
    installed.
  type: string
  inputBinding:
    prefix: --bwa-mem-executable
- id: timeout
  doc: 'Timeout in seconds for the processing of a single read. Default: No timeout.'
  type: string
  inputBinding:
    prefix: --timeout
- id: cpts_limit
  doc: 'Maximum number of changepoints to find within a single indel group. (Not setting
    this option can cause a process to stall and cannot be controlled by the timeout
    option). Default: No limit.'
  type: string
  inputBinding:
    prefix: --cpts-limit
- id: normalization_type
  doc: "Type of normalization to apply to raw signal when calculating statistics based\
    \ on new segmentation. Should be one of {\"median\", \"pA\", \"pA_raw\", \"none\"\
    }. \"none\" will provde the raw 16-bit DAQ values as the raw signal is stored.\
    \ \"pA_raw\" will calculate the pA estimates as in the ONT events (using offset,\
    \ range and digitization parameters stored in the FAST5 file). \"pA\" will first\
    \ apply the \"pA_raw\" normalization followed by kmer-based correction for pA\
    \ drift as described in the nanopolish methylation manuscript (this option requires\
    \ the [--pore-model-filename] option). \"median\" will shift by the median of\
    \ each reads' raw signal and scale by the MAD. Default: median"
  type: string
  inputBinding:
    prefix: --normalization-type
- id: pore_model_filename
  doc: File containing kmer model parameters (level_mean and level_stdv) used in order
    to compute kmer-based corrected pA values. E.g. https://github.com/jts/nanop olish/blob/master/etc/r9-models/template_median68pA.5m
    ers.model
  type: string
  inputBinding:
    prefix: --pore-model-filename
- id: outlier_threshold
  doc: 'Number of median absolute deviation (MAD) values at which to clip the raw
    signal. This can help avoid strong re-segmentation artifacts from spikes in signal.
    Set to negative value to disable outlier clipping. Default: 5'
  type: string
  inputBinding:
    prefix: --outlier-threshold
- id: fast5_pattern
  doc: A pattern to search for a subset of files within fast5-basedir. Note that on
    the unix command line patterns may be expanded so it is best practice to quote
    patterns.
  type: string
  inputBinding:
    prefix: --fast5-pattern
- id: recursive
  doc: Search for FAST5 files within immediate sub- directories.Note that this only
    searches a single level of subdirectories and only for files ending in .fast5.
    This is equivalent to specifying --fast5-pattern "*/*.fast5".
  type: boolean
  inputBinding:
    prefix: --recursive
- id: overwrite
  doc: Overwrite previous corrected group in FAST5/HDF5 file. (Note this only effects
    the group defined by --corrected-group).
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: failed_reads_filename
  doc: 'Output failed read filenames into a this file with assoicated error for each
    read. Default: Do not store failed reads.'
  type: string
  inputBinding:
    prefix: --failed-reads-filename
- id: corrected_group
  doc: 'FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: base_call_group
  doc: 'FAST5 group to use for obtaining original basecalls (under Analyses group).
    Default: Basecall_1D_000'
  type: string
  inputBinding:
    prefix: --basecall-group
- id: processes
  doc: 'Number of processes. Default: 2'
  type: string
  inputBinding:
    prefix: --processes
- id: align_processes
  doc: 'Number of processes to use for aligning and parsing original basecalls. Each
    process will independently load the genome into memory, so use caution with larger
    genomes (e.g. human). Default: 1'
  type: string
  inputBinding:
    prefix: --align-processes
- id: align_threads_per_process
  doc: 'Number of threads to use per alignment process. This value is passed to the
    underlying mapper system calls. Default: [--processes] / (2 * [--align-processes)]'
  type: string
  inputBinding:
    prefix: --align-threads-per-process
- id: re_squiggle_processes
  doc: 'Number of processes to use for re-squiggling raw data. Default: [--processes]
    / 2'
  type: string
  inputBinding:
    prefix: --resquiggle-processes
- id: alignment_batch_size
  doc: 'Batch size (number of reads) for each alignment call. Note that a new system
    call to the mapper is made for each batch (including loading of the genome), so
    it is advised to use larger values for larger genomes. Default: 500'
  type: string
  inputBinding:
    prefix: --alignment-batch-size
- id: skip_event_stdev
  doc: Skip computation of corrected event standard deviations to save (potentially
    significant) time on computations.
  type: boolean
  inputBinding:
    prefix: --skip-event-stdev
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- nanoraw
- genome_resquiggle
