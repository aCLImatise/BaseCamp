from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

_Gd2Topng_V0_1_0 = CommandToolBuilder(tool="_gd2topng", base_command=["_gd2topng"], inputs=[ToolInput(tag="in_gd_two_to_png", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_gd_two", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_png", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_srcx", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_src_y", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_width", input_type=String(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_height", input_type=String(optional=True), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Gd2Topng_V0_1_0().translate("wdl", allow_empty_container=True)

