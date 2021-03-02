from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Msisensor_Pro_Scan_V0_1_0 = CommandToolBuilder(tool="msisensor_pro_scan", base_command=["msisensor-pro", "scan"], inputs=[ToolInput(tag="in_string_sequences_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<string>   reference genome sequences file, *.fasta or *.fa format")), ToolInput(tag="in_string_output_homopolymers", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="<string>   output homopolymers and microsatellites file")), ToolInput(tag="in_int_minimal_homopolymerrepeat", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="<int>      minimal homopolymer(repeat unit length = 1) size, default=10")), ToolInput(tag="in_int_context_length", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="<int>      context length, default=5")), ToolInput(tag="in_int_maximal_homopolymer", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="<int>      maximal homopolymer size, default=50")), ToolInput(tag="in_int_maximal_length", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<int>      maximal length of microsatellite, default=5")), ToolInput(tag="in_int_minimal_repeat", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<int>      minimal repeat times of microsatellite(repeat unit length>=2), default=5")), ToolInput(tag="in_int_output_homopolymer", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<int>      output homopolymer only, 0: no; 1: yes, default=0"))], outputs=[ToolOutput(tag="out_string_output_homopolymers", output_type=File(optional=True), selector=InputSelector(input_to_select="in_string_output_homopolymers", type_hint=File()), doc=OutputDocumentation(doc="<string>   output homopolymers and microsatellites file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msisensor_Pro_Scan_V0_1_0().translate("wdl", allow_empty_container=True)

