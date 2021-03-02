from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Design_Generategraphml_Py_V0_1_0 = CommandToolBuilder(tool="design_generategraphml.py", base_command=["design-generategraphml.py"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Read custom structures and sequence constraints from")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write graphml file with the given filename.\n")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_stdin", input_type=String(), position=0, doc=InputDocumentation(doc="-f FILE, --file FILE  Read file in *.inp format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Design_Generategraphml_Py_V0_1_0().translate("wdl", allow_empty_container=True)

