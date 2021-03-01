from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Mimodd_Varreport_V0_1_0 = CommandToolBuilder(tool="mimodd_varreport", base_command=["mimodd", "varreport"], inputs=[ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc="redirect the output to the specified file (default:\nstdout)")), ToolInput(tag="in_text__format", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="|text, --oformat html|text\nthe format of the output file (default: html)")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="the name of the species to be assumed when generating\nannotations")), ToolInput(tag="in_link", input_type=File(optional=True), prefix="--link", doc=InputDocumentation(doc="file to read species-specific hyperlink formatting\ninstructions from\n")), ToolInput(tag="in_var_report", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_ofile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ofile", type_hint=File()), doc=OutputDocumentation(doc="redirect the output to the specified file (default:\nstdout)")), ToolOutput(tag="out_text__format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_text__format", type_hint=File()), doc=OutputDocumentation(doc="|text, --oformat html|text\nthe format of the output file (default: html)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mimodd_Varreport_V0_1_0().translate("wdl", allow_empty_container=True)

