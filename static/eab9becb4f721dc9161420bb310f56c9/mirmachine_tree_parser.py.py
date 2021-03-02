from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mirmachine_Tree_Parser_Py_V0_1_0 = CommandToolBuilder(tool="mirmachine_tree_parser.py", base_command=["mirmachine-tree-parser.py"], inputs=[ToolInput(tag="in_add_all_nodes", input_type=Boolean(optional=True), prefix="--add-all-nodes", doc=InputDocumentation(doc="Move on the tree both ways.")), ToolInput(tag="in_print_all_nodes", input_type=Boolean(optional=True), prefix="--print-all-nodes", doc=InputDocumentation(doc="Print all available nodes and exit.")), ToolInput(tag="in_newick", input_type=String(), position=0, doc=InputDocumentation(doc="A newick tree.")), ToolInput(tag="in_keyword", input_type=String(), position=1, doc=InputDocumentation(doc="A keyword to gather node miRNAs (e.g. Homo)."))], outputs=[], container="quay.io/biocontainers/mirmachine:0.1.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mirmachine_Tree_Parser_Py_V0_1_0().translate("wdl")

