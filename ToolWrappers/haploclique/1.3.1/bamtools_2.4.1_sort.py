from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Bamtools_2_4_1_Sort_V0_1_0 = CommandToolBuilder(tool="bamtools_2.4.1_sort", base_command=["bamtools-2.4.1", "sort"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file [stdin]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="the output BAM file [stdout]")), ToolInput(tag="in_by_name", input_type=Boolean(optional=True), prefix="-byname", doc=InputDocumentation(doc="sort by alignment name")), ToolInput(tag="in_max_number_alignments", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="max number of alignments per\ntempfile [500000]")), ToolInput(tag="in_mem", input_type=Int(optional=True), prefix="-mem", doc=InputDocumentation(doc="max memory to use [1024]")), ToolInput(tag="in_bam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sort", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sort_options", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="the output BAM file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_2_4_1_Sort_V0_1_0().translate("wdl", allow_empty_container=True)

