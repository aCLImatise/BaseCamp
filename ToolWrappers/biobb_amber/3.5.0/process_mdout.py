from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Process_Mdout_V0_1_0 = CommandToolBuilder(tool="process_mdout", base_command=["process_mdout"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_log_path", input_type=File(optional=True), prefix="--input_log_path", doc=InputDocumentation(doc="AMBER (sander) MD output (log) file. Accepted formats: log, out, txt, o.")), ToolInput(tag="in_output_dat_path", input_type=File(optional=True), prefix="--output_dat_path", doc=InputDocumentation(doc="Dat output file containing data from the specified terms along the MD process. File type: output. Accepted formats: dat, txt, csv.\n"))], outputs=[ToolOutput(tag="out_input_log_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_input_log_path", type_hint=File()), doc=OutputDocumentation(doc="AMBER (sander) MD output (log) file. Accepted formats: log, out, txt, o.")), ToolOutput(tag="out_output_dat_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dat_path", type_hint=File()), doc=OutputDocumentation(doc="Dat output file containing data from the specified terms along the MD process. File type: output. Accepted formats: dat, txt, csv.\n"))], container="quay.io/biocontainers/biobb_amber:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Process_Mdout_V0_1_0().translate("wdl")

