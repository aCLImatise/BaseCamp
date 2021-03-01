from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nw_Topology_V0_1_0 = CommandToolBuilder(tool="nw_topology", base_command=["nw_topology"], inputs=[ToolInput(tag="in_keep_branch_lengths", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": keep branch lengths")), ToolInput(tag="in_discard_inner_node", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc=": discard inner node labels")), ToolInput(tag="in_discard_leaf_labels", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc=": discard leaf labels"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Topology_V0_1_0().translate("wdl", allow_empty_container=True)

