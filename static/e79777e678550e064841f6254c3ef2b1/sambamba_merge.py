from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Sambamba_Merge_V0_1_0 = CommandToolBuilder(tool="sambamba_merge", base_command=["sambamba", "merge"], inputs=[ToolInput(tag="in_n_threads", input_type=Int(optional=True), prefix="--nthreads", doc=InputDocumentation(doc="number of threads to use for compression/decompression")), ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="--compression-level", doc=InputDocumentation(doc="level of compression for merged BAM file, number from 0 to 9")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="output merged header to stdout in SAM format, other options are ignored; mainly for debug purposes")), ToolInput(tag="in_show_progress", input_type=Boolean(optional=True), prefix="--show-progress", doc=InputDocumentation(doc="show progress bar in STDERR")), ToolInput(tag="in_filter", input_type=String(optional=True), prefix="--filter", doc=InputDocumentation(doc="keep only reads that satisfy FILTER\n")), ToolInput(tag="in_samba_mba_merge", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_one_dot_bam", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_two_dot_bam", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sambamba:0.8.0--h984e79f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sambamba_Merge_V0_1_0().translate("wdl")

