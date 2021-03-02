from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nw_Ed_Filename___V0_1_0 = CommandToolBuilder(tool="nw_ed_filename|_", base_command=["nw_ed", "filename|-"], inputs=[ToolInput(tag="in_print_modified_tree", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": do not print the (possibly modified) tree at the end of the run\n(modeled after sed -n)")), ToolInput(tag="in_visit_tree_starting", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": visit tree in preorder (starting at root, and visiting a node\nbefore any of its descendants). Default is post-order (ends at root\nand visits a node after all its descendats).")), ToolInput(tag="in_stop_processing_clade", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": stop processing a clade after the first match - that is, if a node\nmatches, its descendants are not processed.\nNote: this option will automatically set -r, as it makes no\nsense in post-order."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Ed_Filename___V0_1_0().translate("wdl", allow_empty_container=True)

