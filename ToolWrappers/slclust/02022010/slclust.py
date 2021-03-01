from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Slclust_V0_1_0 = CommandToolBuilder(tool="slclust", base_command=["slclust"], inputs=[ToolInput(tag="in__verbosity_at", input_type=String(optional=True), prefix="-j", doc=InputDocumentation(doc="[v] verbosity at 'info', 'debug'")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_of_pairs", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_clusters", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slclust_V0_1_0().translate("wdl", allow_empty_container=True)

