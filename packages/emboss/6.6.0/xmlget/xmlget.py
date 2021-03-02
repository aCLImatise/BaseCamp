from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Xmlget_V0_1_0 = CommandToolBuilder(tool="xmlget", base_command=["xmlget"], inputs=[ToolInput(tag="in_xml", input_type=Boolean(optional=True), prefix="-xml", doc=InputDocumentation(doc=": enter xml value: Error: Unable to get reply from user - end of standard input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xmlget_V0_1_0().translate("wdl", allow_empty_container=True)

