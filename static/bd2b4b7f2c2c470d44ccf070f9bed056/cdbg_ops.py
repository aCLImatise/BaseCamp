from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Cdbg_Ops_V0_1_0 = CommandToolBuilder(tool="cdbg_ops", base_command=["cdbg-ops"], inputs=[ToolInput(tag="in_graph", input_type=String(optional=True), prefix="--graph", doc=InputDocumentation(doc="Prefix of graph files")), ToolInput(tag="in_nodes", input_type=File(optional=True), prefix="--nodes", doc=InputDocumentation(doc="Name of .node file")), ToolInput(tag="in_edges", input_type=File(optional=True), prefix="--edges", doc=InputDocumentation(doc="Name of .edges.dbg file")), ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="Sequence of source node")), ToolInput(tag="in_source_list", input_type=File(optional=True), prefix="--source-list", doc=InputDocumentation(doc="File containing sequences of source nodes")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="Sequence of target node")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Generate distances to all other unitigs")), ToolInput(tag="in_unit_igs", input_type=File(optional=True), prefix="--unitigs", doc=InputDocumentation(doc="File containing unitigs to extend")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="(=100)    Maximum extension length")), ToolInput(tag="in_repeats", input_type=Boolean(optional=True), prefix="--repeats", doc=InputDocumentation(doc="Allow loops in extensions")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Mode of operation"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cdbg_Ops_V0_1_0().translate("wdl", allow_empty_container=True)

