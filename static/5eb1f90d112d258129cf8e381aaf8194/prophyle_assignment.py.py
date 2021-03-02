from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Prophyle_Assignment_Py_V0_1_0 = CommandToolBuilder(tool="prophyle_assignment.py", base_command=["prophyle_assignment.py"], inputs=[ToolInput(tag="in_format_of_output", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="format of output [sam]")), ToolInput(tag="in_measure_hhit_countcnormcoverage", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="measure: h1=hit count, c1=coverage, h2=norm.hit count,\nc2=norm.coverage [h1]")), ToolInput(tag="in_annotate_assignments", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="annotate assignments")), ToolInput(tag="in_use_lca_tie", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="use LCA when tie (multiple assignments with the same\nscore)")), ToolInput(tag="in_use_lca_hits", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="use LCA for k-mers (multiple hits of a k-mer)")), ToolInput(tag="in_configuration_json_dictionary", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[STR [STR ...]]  configuration (a JSON dictionary)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Assignment_Py_V0_1_0().translate("wdl", allow_empty_container=True)

