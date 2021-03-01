from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Directory, Boolean

Hp_Sample_Reads_V0_1_0 = CommandToolBuilder(tool="hp_sample_reads", base_command=["hp_sample_reads"], inputs=[ToolInput(tag="in_fq_one", input_type=Int(optional=True), prefix="--fq1", doc=InputDocumentation(doc="Fastq file with read 1")), ToolInput(tag="in_fq_two", input_type=Int(optional=True), prefix="--fq2", doc=InputDocumentation(doc="Fastq file with read 2")), ToolInput(tag="in_f_qu", input_type=File(optional=True), prefix="--fqU", doc=InputDocumentation(doc="Fastq file with unpaired reads")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory (default: .)")), ToolInput(tag="in_n_reads", input_type=Int(optional=True), prefix="--nreads", doc=InputDocumentation(doc="Number of reads to sample. If greater than the number of\nreads in file, all reads will be sampled.")), ToolInput(tag="in_frac", input_type=Int(optional=True), prefix="--frac", doc=InputDocumentation(doc="Fraction of reads to sample, between 0 and 1. Each read\nhas [frac] probability of being sampled, so number of\nsampled reads is not precisely [frac * num_reads].")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Seed for random number generator.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not write output to console (silence stdout and\nstderr) (default: False)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Append console output to this file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print commands but do not run (default: False)"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: .)")), ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Append console output to this file"))], container="quay.io/biocontainers/haphpipe:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hp_Sample_Reads_V0_1_0().translate("wdl")

