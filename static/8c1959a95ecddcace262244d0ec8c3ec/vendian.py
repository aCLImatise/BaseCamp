from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Vendian_V0_1_0 = CommandToolBuilder(tool="vendian", base_command=["vendian"], inputs=[ToolInput(tag="in_bytes", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vendian_V0_1_0().translate("wdl", allow_empty_container=True)

