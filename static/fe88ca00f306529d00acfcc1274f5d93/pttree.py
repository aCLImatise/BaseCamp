from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Pttree_V0_1_0 = CommandToolBuilder(tool="pttree", base_command=["pttree"], inputs=[ToolInput(tag="in_max_level", input_type=Int(optional=True), prefix="--max-level", doc=InputDocumentation(doc="maximum branch depth of tree to display (-1 == no\nlimit)")), ToolInput(tag="in_sort_by", input_type=Int(optional=True), prefix="--sort-by", doc=InputDocumentation(doc="artificially order nodes, can be either 'size', 'name'\nor 'none'")), ToolInput(tag="in_print_size", input_type=Boolean(optional=True), prefix="--print-size", doc=InputDocumentation(doc="print size of each node/branch")), ToolInput(tag="in_no_print_size", input_type=Boolean(optional=True), prefix="--no-print-size", doc=InputDocumentation(doc="print shape of each node")), ToolInput(tag="in_print_compression", input_type=Boolean(optional=True), prefix="--print-compression", doc=InputDocumentation(doc="print compression library(level) for each compressed")), ToolInput(tag="in_print_percent", input_type=Boolean(optional=True), prefix="--print-percent", doc=InputDocumentation(doc="print size of each node as a % of the total tree size\non disk")), ToolInput(tag="in_no_print_percent", input_type=Boolean(optional=True), prefix="--no-print-percent", doc=InputDocumentation(doc="report sizes in SI units (1 MB == 10^6 B)")), ToolInput(tag="in_use_binary_units", input_type=Boolean(optional=True), prefix="--use-binary-units", doc=InputDocumentation(doc="report sizes in binary units (1 MiB == 2^20 B)")), ToolInput(tag="in_node", input_type=String(), position=0, doc=InputDocumentation(doc="--no-print-compression"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pttree_V0_1_0().translate("wdl", allow_empty_container=True)

