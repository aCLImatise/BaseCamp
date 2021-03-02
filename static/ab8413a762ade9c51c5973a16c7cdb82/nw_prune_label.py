from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nw_Prune_Label_V0_1_0 = CommandToolBuilder(tool="nw_prune_label", base_command=["nw_prune", "label"], inputs=[ToolInput(tag="in_node_labels_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": node labels are in a file whose name is the second argument,\ninstead of being passed  on the command line.\nThere should be one label per line, and no leading or trailing\nwhitespace.")), ToolInput(tag="in_reverse_prune_nodes", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": reverse: prune nodes whose labels are NOT passed on the command\nline. Inner nodes are not pruned. This allows pruning of trees\nwith support values, which syntactically are node labels, withouti\ninner nodes disappearing because their 'label' was not passed on\nthe command line."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Prune_Label_V0_1_0().translate("wdl", allow_empty_container=True)

