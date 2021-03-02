from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

_Gd2Copypal_V0_1_0 = CommandToolBuilder(tool="_gd2copypal", base_command=["_gd2copypal"], inputs=[ToolInput(tag="in_gd_two_copy_pal", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_palette_file_dot_gd_two", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_gd_two", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Gd2Copypal_V0_1_0().translate("wdl", allow_empty_container=True)

