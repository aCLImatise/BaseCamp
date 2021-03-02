from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Fastq_Clipper_V0_1_0 = CommandToolBuilder(tool="fastq_clipper", base_command=["fastq-clipper"], inputs=[ToolInput(tag="in_output_file_stats", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file (stats to stdout)")), ToolInput(tag="in_maximum_difference_percentage", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Maximum difference percentage (10)")), ToolInput(tag="in_minimum_clip_length", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum clip length (1)")), ToolInput(tag="in_minimum_remaining_sequence", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Minimum remaining sequence length (15)")), ToolInput(tag="in_extra_match_length", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="[N]  Extra match length past adapter length,\nN =-1 : search all\nN = 0 : search only up to adapter length")), ToolInput(tag="in_endofline_default", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="End-of-line (default)")), ToolInput(tag="in_beginningofline_supported_yet", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Beginning-of-line (not supported yet)")), ToolInput(tag="in_fast_q_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_adapters", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_stats", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_stats", type_hint=File()), doc=OutputDocumentation(doc="Output file (stats to stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Clipper_V0_1_0().translate("wdl", allow_empty_container=True)

