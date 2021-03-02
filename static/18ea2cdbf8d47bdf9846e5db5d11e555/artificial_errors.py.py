from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Artificial_Errors_Py_V0_1_0 = CommandToolBuilder(tool="artificial_errors.py", base_command=["artificial_errors.py"], inputs=[ToolInput(tag="in_ase", input_type=Int(optional=True), prefix="-ase", doc=InputDocumentation(doc="<i>     : add substitution error at <location> for <length>")), ToolInput(tag="in_ade", input_type=Int(optional=True), prefix="-ade", doc=InputDocumentation(doc="<i>     : add deletion error at <location> for <length>")), ToolInput(tag="in_a_ie", input_type=Int(optional=True), prefix="-aie", doc=InputDocumentation(doc="<i>     : add insertion error at <location> for <length>")), ToolInput(tag="in_in_v", input_type=Int(optional=True), prefix="-inv", doc=InputDocumentation(doc="<i>     : add inversion error at <location> for <length>")), ToolInput(tag="in_cip", input_type=Int(optional=True), prefix="-cip", doc=InputDocumentation(doc="<i>     : copy part of the assembly at <location> for <length>")), ToolInput(tag="in_trp", input_type=String(optional=True), prefix="-trp", doc=InputDocumentation(doc="<i> <i> : transpose assembly from <start> to <end> placing it at <pos>")), ToolInput(tag="in_ab", input_type=Boolean(optional=True), prefix="-ab", doc=InputDocumentation(doc="<i>         : add a break (split into 2 contigs) at <location>")), ToolInput(tag="in_s_name_error", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="<s>         : output file name (error_ + inputfile.fna)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Artificial_Errors_Py_V0_1_0().translate("wdl", allow_empty_container=True)

