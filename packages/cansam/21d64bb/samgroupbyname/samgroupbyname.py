from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Samgroupbyname_V0_1_0 = CommandToolBuilder(tool="samgroupbyname", base_command=["samgroupbyname"], inputs=[ToolInput(tag="in_write_output_bam", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Write output in BAM format")), ToolInput(tag="in_write_standard_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Write to FILE rather than standard output")), ToolInput(tag="in_emit_pairs_discarding", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Emit pairs only, discarding any leftover singleton reads")), ToolInput(tag="in_display_file_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display file information and statistics")), ToolInput(tag="in_bpv", input_type=Boolean(optional=True), prefix="-bpv", doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_write_standard_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write_standard_output", type_hint=File()), doc=OutputDocumentation(doc="Write to FILE rather than standard output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samgroupbyname_V0_1_0().translate("wdl", allow_empty_container=True)

