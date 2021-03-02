from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Jimage_List_V0_1_0 = CommandToolBuilder(tool="jimage_list", base_command=["jimage", "list"], inputs=[ToolInput(tag="in_j_image", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_extract_vertical_line_info_vertical_line_list_vertical_line_verify", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_j_image_dot_dot_dot", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jimage_List_V0_1_0().translate("wdl", allow_empty_container=True)

