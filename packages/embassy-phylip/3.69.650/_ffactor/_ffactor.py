from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Ffactor_V0_1_0 = CommandToolBuilder(tool="_ffactor", base_command=["_ffactor"], inputs=[ToolInput(tag="in_anc", input_type=Boolean(optional=True), prefix="-anc", doc=InputDocumentation(doc="boolean    [N] Put ancestral states in output file")), ToolInput(tag="in_factors", input_type=Boolean(optional=True), prefix="-factors", doc=InputDocumentation(doc="boolean    [N] Put factors information in output file")), ToolInput(tag="in_out_factor_file", input_type=File(optional=True), prefix="-outfactorfile", doc=InputDocumentation(doc="outfile    [*.ffactor] Phylip factor data output file\n(optional)")), ToolInput(tag="in_out_an_c_file", input_type=File(optional=True), prefix="-outancfile", doc=InputDocumentation(doc="outfile    [*.ffactor] Phylip ancestor data output file\n(optional)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers:"))], outputs=[ToolOutput(tag="out_out_factor_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_factor_file", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.ffactor] Phylip factor data output file\n(optional)")), ToolOutput(tag="out_out_an_c_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_an_c_file", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.ffactor] Phylip ancestor data output file\n(optional)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Ffactor_V0_1_0().translate("wdl", allow_empty_container=True)

