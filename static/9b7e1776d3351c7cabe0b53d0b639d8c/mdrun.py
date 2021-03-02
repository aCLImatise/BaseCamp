from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Mdrun_V0_1_0 = CommandToolBuilder(tool="mdrun", base_command=["mdrun"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_d_hdl_path", input_type=File(optional=True), prefix="--output_dhdl_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_cpt_path", input_type=File(optional=True), prefix="--output_cpt_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_xtc_path", input_type=File(optional=True), prefix="--output_xtc_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_log_path", input_type=File(optional=True), prefix="--output_log_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_edr_path", input_type=String(optional=True), prefix="--output_edr_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_gro_path", input_type=File(optional=True), prefix="--output_gro_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_trr_path", input_type=String(optional=True), prefix="--output_trr_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_tpr_path", input_type=File(optional=True), prefix="--input_tpr_path", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_d_hdl_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_d_hdl_path", type_hint=File()), doc=OutputDocumentation(doc="")), ToolOutput(tag="out_output_cpt_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_cpt_path", type_hint=File()), doc=OutputDocumentation(doc="")), ToolOutput(tag="out_output_xtc_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_xtc_path", type_hint=File()), doc=OutputDocumentation(doc="")), ToolOutput(tag="out_output_log_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_log_path", type_hint=File()), doc=OutputDocumentation(doc="")), ToolOutput(tag="out_output_gro_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gro_path", type_hint=File()), doc=OutputDocumentation(doc=""))], container="quay.io/biocontainers/biobb_md:3.5.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdrun_V0_1_0().translate("wdl")

