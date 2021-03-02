from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Treebest_Sdi_V0_1_0 = CommandToolBuilder(tool="treebest_sdi", base_command=["treebest", "sdi"], inputs=[ToolInput(tag="in_reroot", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="reroot")), ToolInput(tag="in_use_species_tree", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="use core species tree instead of the default one")), ToolInput(tag="in_reroot_minimizing_height", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="reroot by minimizing tree height, instead of by\nminimizing the number of duplication events.")), ToolInput(tag="in_do_reorder_leaves", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="do not reorder the leaves.")), ToolInput(tag="in_species_tree", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="species tree [default taxa tree]")), ToolInput(tag="in_cut_subtree_contains", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="cut a subtree that contains genes whose species exist in list [null]")), ToolInput(tag="in_compare_topology_reorder", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="compare topology with FILE and re-order the leaves [null]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Sdi_V0_1_0().translate("wdl", allow_empty_container=True)

