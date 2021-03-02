from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Design_Printgraphml_Py_V0_1_0 = CommandToolBuilder(tool="design_printgraphml.py", base_command=["design-printgraphml.py"], inputs=[ToolInput(tag="in_graph_ml", input_type=File(optional=True), prefix="--graphml", doc=InputDocumentation(doc="Read graphml file with the given filename.")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Read custom structures and sequence constraints from")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="Read file in *.inp format")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write graph to PNG file with the given filename.\n")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_stdin", input_type=String(), position=0, doc=InputDocumentation(doc="-l LAYOUT, --layout LAYOUT"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Design_Printgraphml_Py_V0_1_0().translate("wdl", allow_empty_container=True)

