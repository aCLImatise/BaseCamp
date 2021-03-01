from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Validjson_V0_1_0 = CommandToolBuilder(tool="validjson", base_command=["validjson"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Get confirmation that the files are valid."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validjson_V0_1_0().translate("wdl", allow_empty_container=True)

