from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Kwip_V0_1_0 = CommandToolBuilder(tool="kwip", base_command=["kwip"], inputs=[ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to utilise. [default N_CPUS]")), ToolInput(tag="in_kernel", input_type=File(optional=True), prefix="--kernel", doc=InputDocumentation(doc="Output file for the kernel matrix. [default None]")), ToolInput(tag="in_distance", input_type=File(optional=True), prefix="--distance", doc=InputDocumentation(doc="Output file for the distance matrix. [default stdout]")), ToolInput(tag="in_unweighted", input_type=Boolean(optional=True), prefix="--unweighted", doc=InputDocumentation(doc="Use the unweighted inner proudct kernel. [default off]")), ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="--weights", doc=InputDocumentation(doc="Bin weight vector file (input, or output w/ -C).")), ToolInput(tag="in_calc_weights", input_type=Boolean(optional=True), prefix="--calc-weights", doc=InputDocumentation(doc="Calculate only the bin weight vector, not kernel matrix.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity. May or may not acutally do anything.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Execute silently but for errors.")), ToolInput(tag="in_hashes", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_kernel", output_type=File(optional=True), selector=InputSelector(input_to_select="in_kernel", type_hint=File()), doc=OutputDocumentation(doc="Output file for the kernel matrix. [default None]")), ToolOutput(tag="out_distance", output_type=File(optional=True), selector=InputSelector(input_to_select="in_distance", type_hint=File()), doc=OutputDocumentation(doc="Output file for the distance matrix. [default stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kwip_V0_1_0().translate("wdl", allow_empty_container=True)

