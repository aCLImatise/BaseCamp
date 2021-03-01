from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fitpkaeo_Py_V0_1_0 = CommandToolBuilder(tool="fitpkaeo.py", base_command=["fitpkaeo.py"], inputs=[ToolInput(tag="in_author", input_type=Boolean(optional=True), prefix="--author", doc=InputDocumentation(doc="show the program's author name and exit")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="If stated, prints verbose showing initial and final\nvalues of X2. Default: False")), ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="--graph", doc=InputDocumentation(doc="If stated, generates a plot of the fitted curve. Default:")), ToolInput(tag="in_false", input_type=String(), position=0, doc=InputDocumentation(doc="--graph-path FILE  Path to save the graph. Default: ./graph.png"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fitpkaeo_Py_V0_1_0().translate("wdl", allow_empty_container=True)

