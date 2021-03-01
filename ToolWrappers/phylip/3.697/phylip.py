from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Phylip_V0_1_0 = CommandToolBuilder(tool="phylip", base_command=["phylip"], inputs=[ToolInput(tag="in_not_exist_phylip", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="not exist in Phylip"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylip_V0_1_0().translate("wdl", allow_empty_container=True)

