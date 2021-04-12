from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Braker_Cleanup_Pl_V0_1_0 = CommandToolBuilder(tool="braker_cleanup.pl", base_command=["braker_cleanup.pl"], inputs=[ToolInput(tag="in_wdir", input_type=Directory(optional=True), prefix="--wdir", doc=InputDocumentation(doc="output directory of braker.pl job"))], outputs=[ToolOutput(tag="out_wdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_wdir", type_hint=File()), doc=OutputDocumentation(doc="output directory of braker.pl job"))], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Braker_Cleanup_Pl_V0_1_0().translate("wdl")

