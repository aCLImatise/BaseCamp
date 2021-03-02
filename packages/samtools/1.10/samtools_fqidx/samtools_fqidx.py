from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Samtools_Fqidx_V0_1_0 = CommandToolBuilder(tool="samtools_fqidx", base_command=["samtools", "fqidx"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write FASTQ to file.")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Length of FASTQ sequence line. [60]")), ToolInput(tag="in_continue", input_type=Boolean(optional=True), prefix="--continue", doc=InputDocumentation(doc="Continue after trying to retrieve missing region.")), ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc="File of regions.  Format is chr:from-to. One per line.")), ToolInput(tag="in_reverse_complement", input_type=String(optional=True), prefix="--reverse-complement", doc=InputDocumentation(doc="complement sequences.")), ToolInput(tag="in_mark_strand", input_type=String(optional=True), prefix="--mark-strand", doc=InputDocumentation(doc="Add strand indicator to sequence name\nTYPE = rc   for /rc on negative strand (default)\nno   for no strand indicator\nsign for (+) / (-)\ncustom,<pos>,<neg> for custom indicator")), ToolInput(tag="in_file_dot_fq_vertical_line_file_dot_fq_do_tgz", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Fqidx_V0_1_0().translate("wdl", allow_empty_container=True)

