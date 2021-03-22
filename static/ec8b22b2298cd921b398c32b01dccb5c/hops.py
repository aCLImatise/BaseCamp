from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean

Hops_V0_1_0 = CommandToolBuilder(tool="hops", base_command=["hops"], inputs=[ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--configFile", doc=InputDocumentation(doc="Path to Config File")), ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="Specify input directory or files valid option depend on mode")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="HOPS Mode to run accpeted full, malt, maltex, post")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Specify out directory")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Specify out directory"))], container="quay.io/biocontainers/hops:0.35--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hops_V0_1_0().translate("wdl")

