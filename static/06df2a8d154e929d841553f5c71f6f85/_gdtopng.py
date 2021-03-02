from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

_Gdtopng_V0_1_0 = CommandToolBuilder(tool="_gdtopng", base_command=["_gdtopng"], inputs=[ToolInput(tag="in_gd_to_png", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_gd", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_dot_png", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Gdtopng_V0_1_0().translate("wdl", allow_empty_container=True)

