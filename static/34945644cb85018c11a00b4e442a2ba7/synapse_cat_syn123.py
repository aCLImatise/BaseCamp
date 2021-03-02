from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Synapse_Cat_Syn123_V0_1_0 = CommandToolBuilder(tool="synapse_cat_syn123", base_command=["synapse", "cat", "syn123"], inputs=[ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_u", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="")), ToolInput(tag="in_synapse", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Cat_Syn123_V0_1_0().translate("wdl")

