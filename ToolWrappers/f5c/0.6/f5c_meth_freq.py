from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, File, Boolean, String

F5C_Meth_Freq_V0_1_0 = CommandToolBuilder(tool="f5c_meth_freq", base_command=["f5c", "meth-freq"], inputs=[ToolInput(tag="in_call_threshold_log", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="call threshold for the log likelihood ratio. Default is 2.5.")), ToolInput(tag="in_input_file_read", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input file. Read from stdin if not specified")), ToolInput(tag="in_output_file_write", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file. Write to stdout if not specified")), ToolInput(tag="in_split_groups", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="split groups")), ToolInput(tag="in_meth_freq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_write", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_write", type_hint=File()), doc=OutputDocumentation(doc="output file. Write to stdout if not specified"))], container="quay.io/biocontainers/f5c:0.6--h8b6279f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    F5C_Meth_Freq_V0_1_0().translate("wdl")

