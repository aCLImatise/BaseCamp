from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Prophyle_Ncbi_Tree_Py_V0_1_0 = CommandToolBuilder(tool="prophyle_ncbi_tree.py", base_command=["prophyle_ncbi_tree.py"], inputs=[ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="log file [stderr]")), ToolInput(tag="in_build_reduced_tree", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="build reduced tree (one sequence every n)")), ToolInput(tag="in_root_tree_eg", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="root of the tree (e.g. Bacteria); will exclude sequences\nwhich are not its descendants\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Ncbi_Tree_Py_V0_1_0().translate("wdl", allow_empty_container=True)

