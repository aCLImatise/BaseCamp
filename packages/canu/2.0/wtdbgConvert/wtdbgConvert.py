from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Wtdbgconvert_V0_1_0 = CommandToolBuilder(tool="wtdbgConvert", base_command=["wtdbgConvert"], inputs=[ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="output prefix")), ToolInput(tag="in_file_dot_dbg_dot_lay", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wtdbgconvert_V0_1_0().translate("wdl", allow_empty_container=True)

