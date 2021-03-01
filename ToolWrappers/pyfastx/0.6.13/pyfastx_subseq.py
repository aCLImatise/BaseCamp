from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pyfastx_Subseq_V0_1_0 = CommandToolBuilder(tool="pyfastx_subseq", base_command=["pyfastx", "subseq"], inputs=[ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc="tab-delimited file, one region per line, both start\nand end position are 1-based")), ToolInput(tag="in_bed_file", input_type=File(optional=True), prefix="--bed-file", doc=InputDocumentation(doc="tab-delimited BED file, 0-based start position and\n1-based end position")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="output file, default: output to stdout\n")), ToolInput(tag="in_fast_x", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta file, gzip support")), ToolInput(tag="in_region", input_type=String(), position=1, doc=InputDocumentation(doc="format is chr:start-end, start and end position is\n1-based, multiple regions were separated by space"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="output file, default: output to stdout\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyfastx_Subseq_V0_1_0().translate("wdl", allow_empty_container=True)

