from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Join_Into_Groups_Of_V0_1_0 = CommandToolBuilder(tool="join_into_groups_of", base_command=["join-into-groups-of"], inputs=[ToolInput(tag="in_null", input_type=Boolean(optional=True), prefix="--null", doc=InputDocumentation(doc="")), ToolInput(tag="in_interactive", input_type=Boolean(optional=True), prefix="--interactive", doc=InputDocumentation(doc="")), ToolInput(tag="in_zero_pr_tx", input_type=Boolean(optional=True), prefix="-0prtx", doc=InputDocumentation(doc="")), ToolInput(tag="in_xargs", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Join_Into_Groups_Of_V0_1_0().translate("wdl")

