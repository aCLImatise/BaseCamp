from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pyega3_Files_V0_1_0 = CommandToolBuilder(tool="pyega3_files", base_command=["pyega3", "files"], inputs=[ToolInput(tag="in_identifier", input_type=String(), position=0, doc=InputDocumentation(doc="Dataset ID (e.g. EGAD00000000001)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyega3_Files_V0_1_0().translate("wdl", allow_empty_container=True)

