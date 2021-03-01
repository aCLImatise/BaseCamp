from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Enasearch_Type____V0_1_0 = CommandToolBuilder(tool="enasearch_type...", base_command=["enasearch", "type..."], inputs=[ToolInput(tag="in_ena_search", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enasearch_Type____V0_1_0().translate("wdl", allow_empty_container=True)

