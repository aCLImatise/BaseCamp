from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Countchars_V0_1_0 = CommandToolBuilder(tool="countChars", base_command=["countChars"], inputs=[ToolInput(tag="in_char", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Countchars_V0_1_0().translate("wdl", allow_empty_container=True)

