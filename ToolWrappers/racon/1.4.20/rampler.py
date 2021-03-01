from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Rampler_V0_1_0 = CommandToolBuilder(tool="rampler", base_command=["rampler"], inputs=[ToolInput(tag="in_out_directory", input_type=Directory(optional=True), prefix="--out-directory", doc=InputDocumentation(doc="default: current directory\npath in which sampled files will be created"))], outputs=[ToolOutput(tag="out_out_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_directory", type_hint=File()), doc=OutputDocumentation(doc="default: current directory\npath in which sampled files will be created"))], container="quay.io/biocontainers/racon:1.4.20--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rampler_V0_1_0().translate("wdl")

