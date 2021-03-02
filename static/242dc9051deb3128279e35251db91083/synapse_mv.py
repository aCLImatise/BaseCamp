from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Synapse_Mv_V0_1_0 = CommandToolBuilder(tool="synapse_mv", base_command=["synapse", "mv"], inputs=[ToolInput(tag="in_id", input_type=Int(optional=True), prefix="--id", doc=InputDocumentation(doc="Id of entity in Synapse to be moved.")), ToolInput(tag="in_parentid", input_type=Int(optional=True), prefix="--parentid", doc=InputDocumentation(doc="Synapse ID of project or folder where file/folder will\nbe moved\n"))], outputs=[], container="quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Mv_V0_1_0().translate("wdl")

