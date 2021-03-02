from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Wdl_Parse_Wdl_File_V0_1_0 = CommandToolBuilder(tool="wdl_parse_wdl_file", base_command=["wdl", "parse", "wdl_file"], inputs=[ToolInput(tag="in_no_color", input_type=Boolean(optional=True), prefix="--no-color", doc=InputDocumentation(doc="")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="")), ToolInput(tag="in_wdl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wdl_Parse_Wdl_File_V0_1_0().translate("wdl", allow_empty_container=True)

