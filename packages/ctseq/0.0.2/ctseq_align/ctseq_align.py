from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Ctseq_Align_V0_1_0 = CommandToolBuilder(tool="ctseq_align", base_command=["ctseq", "align"], inputs=[ToolInput(tag="in_ref_dir", input_type=File(optional=True), prefix="--refDir", doc=InputDocumentation(doc="Full path to directory where you have already built\nyour methylation reference files. If no '--refDir' is\nspecified, ctseq will look in your current directory.")), ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="Path to directory where you have your fastq files. If\nno '--dir' is specified, ctseq will look in your\ncurrent directory.")), ToolInput(tag="in_forward_adapter", input_type=String(optional=True), prefix="--forwardAdapter", doc=InputDocumentation(doc="adapter sequence to remove from FORWARD reads\n(default=AGTGTGGGAGGGTAGTTGGTGTT)")), ToolInput(tag="in_reverse_adapter", input_type=String(optional=True), prefix="--reverseAdapter", doc=InputDocumentation(doc="adapter sequence to remove from REVERSE reads\n(default=ACTCCCCACCTTCCTCATTCTCTAAGACGGTGT)")), ToolInput(tag="in_cut_adapt_cores", input_type=Int(optional=True), prefix="--cutadaptCores", doc=InputDocumentation(doc="number of cores to use with Cutadapt. Default=1.\nHighly recommended to run with more than 1 core, try\nstarting with 18 cores")), ToolInput(tag="in_bismark_cores", input_type=Int(optional=True), prefix="--bismarkCores", doc=InputDocumentation(doc="number of cores to use to align with Bismark.\nDefault=1. Highly recommended to run with more than 1\ncore, try starting with 6 cores")), ToolInput(tag="in_reads_per_file", input_type=File(optional=True), prefix="--readsPerFile", doc=InputDocumentation(doc="number of reads to analyze per fastq file (should only\nadjust this if you think you are too big of a file\nthrough bismark). Default=5000000 (5 million)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctseq_Align_V0_1_0().translate("wdl", allow_empty_container=True)

