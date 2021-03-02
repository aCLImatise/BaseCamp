from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Make_Ultrametric_Py_V0_1_0 = CommandToolBuilder(tool="make_ultrametric.py", base_command=["make_ultrametric.py"], inputs=[ToolInput(tag="in_root_age", input_type=String(optional=True), prefix="--root_age", doc=InputDocumentation(doc="Rescale branch lengths by a multiplicative factor to\nachieve requested root age\n")), ToolInput(tag="in_tree_fn", input_type=String(), position=0, doc=InputDocumentation(doc="File containing a rooted tree in newick format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Ultrametric_Py_V0_1_0().translate("wdl", allow_empty_container=True)

