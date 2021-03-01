from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Ribo_Config_V0_1_0 = CommandToolBuilder(tool="ribo_config", base_command=["ribo", "config"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="output directory; default: /")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="--name", doc=InputDocumentation(doc="name of config file; default: timestamped")), ToolInput(tag="in_ribo", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory; default: /"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribo_Config_V0_1_0().translate("wdl", allow_empty_container=True)

