from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

_Pngtogd2_V0_1_0 = CommandToolBuilder(tool="_pngtogd2", base_command=["_pngtogd2"], inputs=[ToolInput(tag="in_png_to_gd_two", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_png", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_gd_two", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_cs", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_fmt", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pngtogd2_V0_1_0().translate("wdl", allow_empty_container=True)

