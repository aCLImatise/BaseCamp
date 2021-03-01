from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bam2Mr_V0_1_0 = CommandToolBuilder(tool="bam2mr", base_command=["bam2mr"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="Name of output file")), ToolInput(tag="in_suff", input_type=Boolean(optional=True), prefix="-suff", doc=InputDocumentation(doc="read name suffix length (default: 0)")), ToolInput(tag="in_seg_len", input_type=Boolean(optional=True), prefix="-seg_len", doc=InputDocumentation(doc="maximum allowed insert size")), ToolInput(tag="in_max_reads", input_type=Boolean(optional=True), prefix="-max_reads", doc=InputDocumentation(doc="maximum number of reads to hold for merging")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print more information")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_bam_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Mr_V0_1_0().translate("wdl", allow_empty_container=True)

