from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Graph_Simplification_Py_Infile_V0_1_0 = CommandToolBuilder(tool="graph_simplification.py_infile", base_command=["graph_simplification.py", "infile"], inputs=[ToolInput(tag="in_length_minimal_suffix", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Length of minimal suffix for node merging")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="outfile"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graph_Simplification_Py_Infile_V0_1_0().translate("wdl", allow_empty_container=True)

