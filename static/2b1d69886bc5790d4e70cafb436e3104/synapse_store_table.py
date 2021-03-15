from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Synapse_Store_Table_V0_1_0 = CommandToolBuilder(tool="synapse_store_table", base_command=["synapse", "store-table"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of Table")), ToolInput(tag="in_parentid", input_type=Int(optional=True), prefix="--parentid", doc=InputDocumentation(doc="Synapse ID of project")), ToolInput(tag="in_csv", input_type=File(optional=True), prefix="--csv", doc=InputDocumentation(doc="Path to csv"))], outputs=[], container="quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Store_Table_V0_1_0().translate("wdl")

