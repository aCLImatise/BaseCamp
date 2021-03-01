from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nasp_Output_Folder_V0_1_0 = CommandToolBuilder(tool="nasp_output_folder", base_command=["nasp", "output_folder"], inputs=[ToolInput(tag="in_config", input_type=String(optional=True), prefix="--config", doc=InputDocumentation(doc="")), ToolInput(tag="in_nasp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_fast_a", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_folder", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nasp_Output_Folder_V0_1_0().translate("wdl", allow_empty_container=True)

