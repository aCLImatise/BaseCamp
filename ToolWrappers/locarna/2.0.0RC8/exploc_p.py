from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Exploc_P_V0_1_0 = CommandToolBuilder(tool="exploc_p", base_command=["exploc_p"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="full documentation")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose")), ToolInput(tag="in_exp_a_rnap_params", input_type=Boolean(optional=True), prefix="--exparnap-params", doc=InputDocumentation(doc="parameters for ExpaRNA-P")), ToolInput(tag="in_loca_rna_params", input_type=Boolean(optional=True), prefix="--locarna-params", doc=InputDocumentation(doc="parameters for LocARNA")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="path to output folder")), ToolInput(tag="in_output_time", input_type=Boolean(optional=True), prefix="--output-time", doc=InputDocumentation(doc="output individual runtimes")), ToolInput(tag="in_loca_rna_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--exparnap-params   parameters for ExpaRNA-P (def='').")), ToolInput(tag="in_stored_dot", input_type=String(), position=1, doc=InputDocumentation(doc="--output-time       print individual times for Preprocessing, ExpaRNA-P"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="path to output folder"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Exploc_P_V0_1_0().translate("wdl", allow_empty_container=True)

