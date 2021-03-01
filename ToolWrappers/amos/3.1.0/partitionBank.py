from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Partitionbank_V0_1_0 = CommandToolBuilder(tool="partitionBank", base_command=["partitionBank"], inputs=[ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_partition_bank", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_an_k", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bank_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Partitionbank_V0_1_0().translate("wdl", allow_empty_container=True)

