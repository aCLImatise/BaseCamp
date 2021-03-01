from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Samcat_V0_1_0 = CommandToolBuilder(tool="samcat", base_command=["samcat"], inputs=[ToolInput(tag="in_write_output_format", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Write output in BAM format (equivalent to -Obam)")), ToolInput(tag="in_display_only_alignment", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Display only alignment records matching FLAGS")), ToolInput(tag="in_suppress_headers_output", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Suppress '@' headers in the output")), ToolInput(tag="in_write_standard_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Write to FILE rather than standard output")), ToolInput(tag="in_write_output_specified", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="Write output in the specified FORMAT")), ToolInput(tag="in_display_file_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display file information and statistics")), ToolInput(tag="in_b_nv", input_type=Boolean(optional=True), prefix="-bnv", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Compressed binary BAM format")), ToolInput(tag="in_hex", input_type=String(), position=1, doc=InputDocumentation(doc="SAM format, with flags displayed in hexadecimal")), ToolInput(tag="in_text", input_type=String(), position=2, doc=InputDocumentation(doc="SAM format, with flags displayed as readable strings")), ToolInput(tag="in_ub_am", input_type=String(), position=3, doc=InputDocumentation(doc="Uncompressed binary BAM format"))], outputs=[ToolOutput(tag="out_write_standard_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write_standard_output", type_hint=File()), doc=OutputDocumentation(doc="Write to FILE rather than standard output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samcat_V0_1_0().translate("wdl", allow_empty_container=True)

