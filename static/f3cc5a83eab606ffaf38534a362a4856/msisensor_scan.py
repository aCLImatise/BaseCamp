from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Msisensor_Scan_V0_1_0 = CommandToolBuilder(tool="msisensor_scan", base_command=["msisensor", "scan"], inputs=[ToolInput(tag="in_string_sequences_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<string>   reference genome sequences file, *.fasta format")), ToolInput(tag="in_string_output_homopolymer", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="<string>   output homopolymer and microsatelittes file")), ToolInput(tag="in_int_minimal_homopolymer", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="<int>      minimal homopolymer size, default=5")), ToolInput(tag="in_int_context_length", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="<int>      context length, default=5")), ToolInput(tag="in_int_maximal_homopolymer", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="<int>      maximal homopolymer size, default=50")), ToolInput(tag="in_int_maximal_length", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<int>      maximal length of microsate, default=5")), ToolInput(tag="in_int_minimal_repeat", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<int>      minimal repeat times of microsate, default=3")), ToolInput(tag="in_int_output_homopolymer", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<int>      output homopolymer only, 0: no; 1: yes, default=0"))], outputs=[ToolOutput(tag="out_string_output_homopolymer", output_type=File(optional=True), selector=InputSelector(input_to_select="in_string_output_homopolymer", type_hint=File()), doc=OutputDocumentation(doc="<string>   output homopolymer and microsatelittes file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msisensor_Scan_V0_1_0().translate("wdl", allow_empty_container=True)

