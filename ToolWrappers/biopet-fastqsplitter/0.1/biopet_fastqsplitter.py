from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Biopet_Fastqsplitter_V0_1_0 = CommandToolBuilder(tool="biopet_fastqsplitter", base_command=["biopet-fastqsplitter"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'")), ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--inputFile", doc=InputDocumentation(doc="Path to input file")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputFile", doc=InputDocumentation(doc="Path to output file. Multiple output files can be specified.")), ToolInput(tag="in_fast_q_splitter", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path to output file. Multiple output files can be specified."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biopet_Fastqsplitter_V0_1_0().translate("wdl", allow_empty_container=True)

