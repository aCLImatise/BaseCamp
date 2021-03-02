from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Flye_Samtools_Fqidx_V0_1_0 = CommandToolBuilder(tool="flye_samtools_fqidx", base_command=["flye-samtools", "fqidx"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write FASTQ to file.")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Length of FASTQ sequence line. [60]")), ToolInput(tag="in_continue", input_type=Boolean(optional=True), prefix="--continue", doc=InputDocumentation(doc="Continue after trying to retrieve missing region.")), ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc="File of regions.  Format is chr:from-to. One per line.")), ToolInput(tag="in_reverse_complement", input_type=String(optional=True), prefix="--reverse-complement", doc=InputDocumentation(doc="complement sequences.")), ToolInput(tag="in_mark_strand", input_type=String(optional=True), prefix="--mark-strand", doc=InputDocumentation(doc="Add strand indicator to sequence name\nTYPE = rc   for /rc on negative strand (default)\nno   for no strand indicator\nsign for (+) / (-)\ncustom,<pos>,<neg> for custom indicator")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fq_idx", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_fq_vertical_line_file_dot_fq_do_tgz", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Fqidx_V0_1_0().translate("wdl")

