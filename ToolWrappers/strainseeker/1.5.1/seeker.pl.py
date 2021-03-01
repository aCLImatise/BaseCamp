from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Seeker_Pl_V0_1_0 = CommandToolBuilder(tool="seeker.pl", base_command=["seeker.pl"], inputs=[ToolInput(tag="in_none_input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=", none         - Input file (can be multiple, each with own flag)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="- Output file name (default StrainSeeker_output)")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="--dir", doc=InputDocumentation(doc="- Path to database directory")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="- Print out more of the working process"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="- Output file name (default StrainSeeker_output)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seeker_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

