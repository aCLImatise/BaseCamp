from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Slicedimage_Checksum_Out_Path_V0_1_0 = CommandToolBuilder(tool="slicedimage_checksum_out_path", base_command=["slicedimage", "checksum", "out_path"], inputs=[ToolInput(tag="in_pretty", input_type=Boolean(optional=True), prefix="--pretty", doc=InputDocumentation(doc="")), ToolInput(tag="in_sliced_image", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_checksum", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_url", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_path", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slicedimage_Checksum_Out_Path_V0_1_0().translate("wdl", allow_empty_container=True)

