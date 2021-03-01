from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Consambig_V0_1_0 = CommandToolBuilder(tool="consambig", base_command=["consambig"], inputs=[ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="-name", doc=InputDocumentation(doc="string     Name of the consensus sequence (Any string)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Consambig_V0_1_0().translate("wdl", allow_empty_container=True)

