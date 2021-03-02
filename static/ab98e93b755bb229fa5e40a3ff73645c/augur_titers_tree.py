from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean, File

Augur_Titers_Tree_V0_1_0 = CommandToolBuilder(tool="augur_titers_tree", base_command=["augur", "titers", "tree"], inputs=[ToolInput(tag="in_titers", input_type=Array(t=String(), optional=True), prefix="--titers", doc=InputDocumentation(doc="file with titer measurements")), ToolInput(tag="in_tree", input_type=String(optional=True), prefix="--tree", doc=InputDocumentation(doc="tree to perform fit titer model to")), ToolInput(tag="in_allow_empty_model", input_type=Boolean(optional=True), prefix="--allow-empty-model", doc=InputDocumentation(doc="allow model to be empty")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="JSON file to save titer model\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Titers_Tree_V0_1_0().translate("wdl", allow_empty_container=True)

