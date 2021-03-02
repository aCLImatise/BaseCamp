from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Synapse_Get_Sts_Token_V0_1_0 = CommandToolBuilder(tool="synapse_get_sts_token", base_command=["synapse", "get-sts-token"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_id", input_type=String(), position=0, doc=InputDocumentation(doc="Synapse id"))], outputs=[], container="quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Get_Sts_Token_V0_1_0().translate("wdl")

