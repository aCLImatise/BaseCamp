from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Mlocarna_V0_1_0 = CommandToolBuilder(tool="mlocarna", base_command=["mlocarna"], inputs=[ToolInput(tag="in_fast_a_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mlocarna_V0_1_0().translate("wdl", allow_empty_container=True)

