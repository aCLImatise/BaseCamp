from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Asn2Xml_V0_1_0 = CommandToolBuilder(tool="asn2xml", base_command=["asn2xml"], inputs=[ToolInput(tag="in_filename_asn_input", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Filename for asn.1 input [File In]\ndefault = stdin")), ToolInput(tag="in_input_seqentry_optionaldefault", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Input is a Seq-entry [T/F]  Optional\ndefault = F")), ToolInput(tag="in_input_seqsubmit_optionaldefault", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Input is a Seq-submit [T/F]  Optional\ndefault = F")), ToolInput(tag="in_input_asnfile_optionaldefault", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Input asnfile in binary mode [T/F]  Optional\ndefault = T")), ToolInput(tag="in_filename_optionaldefault_stdout", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Filename for XML output [File Out]  Optional\ndefault = stdout")), ToolInput(tag="in_log_errors_file", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="Log errors to file named: [File Out]  Optional"))], outputs=[ToolOutput(tag="out_filename_optionaldefault_stdout", output_type=File(optional=True), selector=InputSelector(input_to_select="in_filename_optionaldefault_stdout", type_hint=File()), doc=OutputDocumentation(doc="Filename for XML output [File Out]  Optional\ndefault = stdout")), ToolOutput(tag="out_log_errors_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_errors_file", type_hint=File()), doc=OutputDocumentation(doc="Log errors to file named: [File Out]  Optional"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Asn2Xml_V0_1_0().translate("wdl", allow_empty_container=True)

