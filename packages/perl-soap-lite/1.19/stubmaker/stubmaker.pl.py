from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Stubmaker_Pl_V0_1_0 = CommandToolBuilder(tool="stubmaker.pl", base_command=["stubmaker.pl"], inputs=[ToolInput(tag="in_verbose_outputbe_quiet", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose Outputbe quiet")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Output directory"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stubmaker_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

