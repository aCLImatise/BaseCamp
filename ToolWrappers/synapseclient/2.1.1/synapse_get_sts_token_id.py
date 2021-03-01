from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Synapse_Get_Sts_Token_Id_V0_1_0 = CommandToolBuilder(tool="synapse_get_sts_token_id", base_command=["synapse", "get-sts-token", "id"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_synapse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_get_sts_token", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Get_Sts_Token_Id_V0_1_0().translate("wdl", allow_empty_container=True)

