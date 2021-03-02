from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Seqretsplit_V0_1_0 = CommandToolBuilder(tool="_seqretsplit", base_command=["_seqretsplit"], inputs=[ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="-feature", doc=InputDocumentation(doc="boolean    Use feature information")), ToolInput(tag="in_first_only", input_type=Boolean(optional=True), prefix="-firstonly", doc=InputDocumentation(doc="boolean    Read one sequence and stop"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Seqretsplit_V0_1_0().translate("wdl", allow_empty_container=True)

