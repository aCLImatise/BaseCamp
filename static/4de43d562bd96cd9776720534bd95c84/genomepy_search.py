from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Genomepy_Search_V0_1_0 = CommandToolBuilder(tool="genomepy_search", base_command=["genomepy", "search"], inputs=[ToolInput(tag="in_provider", input_type=String(optional=True), prefix="--provider", doc=InputDocumentation(doc="provider")), ToolInput(tag="in_term", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomepy_Search_V0_1_0().translate("wdl", allow_empty_container=True)

