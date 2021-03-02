from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

_Gd2Togif_V0_1_0 = CommandToolBuilder(tool="_gd2togif", base_command=["_gd2togif"], inputs=[ToolInput(tag="in_gd_two_to_gif", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_gd_two", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_do_tgif", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Gd2Togif_V0_1_0().translate("wdl", allow_empty_container=True)

