from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Interleave_Reads_Py_V0_1_0 = CommandToolBuilder(tool="interleave_reads.py", base_command=["interleave-reads.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_no_reformat", input_type=File(optional=True), prefix="--no-reformat", doc=InputDocumentation(doc="Do not reformat read names or enforce consistency\n(default: False)")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output file if it exists (default: False)")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Compress output using gzip (default: False)")), ToolInput(tag="in_bzip", input_type=Boolean(optional=True), prefix="--bzip", doc=InputDocumentation(doc="Compress output using bzip2 (default: False)")), ToolInput(tag="in_left", input_type=String(), position=0, doc=InputDocumentation(doc="right"))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output file if it exists (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interleave_Reads_Py_V0_1_0().translate("wdl", allow_empty_container=True)

