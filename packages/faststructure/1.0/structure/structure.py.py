from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Float, String, Boolean

Structure_Py_V0_1_0 = CommandToolBuilder(tool="structure.py", base_command=["structure.py"], inputs=[ToolInput(tag="in_number_of_populations", input_type=Int(optional=True), prefix="-K", doc=InputDocumentation(doc="(number of populations)")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="(/path/to/input/file)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="(/path/to/output/file)")), ToolInput(tag="in_to_l", input_type=Float(optional=True), prefix="--tol", doc=InputDocumentation(doc="(convergence criterion; default: 10e-6)")), ToolInput(tag="in_prior", input_type=String(optional=True), prefix="--prior", doc=InputDocumentation(doc="(choice of prior; default: simple)")), ToolInput(tag="in_cv", input_type=Int(optional=True), prefix="--cv", doc=InputDocumentation(doc="(number of test sets for cross-validation, 0 implies no CV step; default: 0)")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="(format of input file; default: bed)")), ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="--full", doc=InputDocumentation(doc="(to output all variational parameters; optional)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="(manually specify seed for random number generator; optional)")), ToolInput(tag="in_python", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="(/path/to/output/file)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Structure_Py_V0_1_0().translate("wdl", allow_empty_container=True)

