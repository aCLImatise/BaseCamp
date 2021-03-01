from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bam2Bedgraph_V0_1_0 = CommandToolBuilder(tool="bam2bedgraph", base_command=["bam2bedgraph"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Path to bam/cram input file. [default: stdin]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="File path for output. [default: stdout]")), ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="Region in bam to access.")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="--filter", doc=InputDocumentation(doc="Ignore reads with the filter flags [int].")), ToolInput(tag="in_filter_include", input_type=Boolean(optional=True), prefix="--filter-include", doc=InputDocumentation(doc="[int]      SAM flags to include. [default: 0]\nN.B. if properly paired reads are filtered for inclusion bam2bw will assume paired-end data\nand exclude any proper-pair flagged reads not in F/R orientation.-a --overlap                   Use overlapping read check.")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_cr_vertical_line_b", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_am", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="File path for output. [default: stdout]"))], container="quay.io/biocontainers/cgpbigwig:1.5.2--h93d22ca_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Bedgraph_V0_1_0().translate("wdl")

