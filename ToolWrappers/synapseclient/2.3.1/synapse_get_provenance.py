from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Synapse_Get_Provenance_V0_1_0 = CommandToolBuilder(tool="synapse_get_provenance", base_command=["synapse", "get-provenance"], inputs=[ToolInput(tag="in_id", input_type=Int(optional=True), prefix="--id", doc=InputDocumentation(doc="Synapse ID of entity whose provenance we are\naccessing."))], outputs=[], container="quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Get_Provenance_V0_1_0().translate("wdl")

