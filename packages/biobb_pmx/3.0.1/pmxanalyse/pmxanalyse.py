from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pmxanalyse_V0_1_0 = CommandToolBuilder(tool="pmxanalyse", base_command=["pmxanalyse"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_a_x_vg_zip_path", input_type=File(optional=True), prefix="--input_a_xvg_zip_path", doc=InputDocumentation(doc="Path the zip file containing the dgdl.xvg files of the A state")), ToolInput(tag="in_input_b_x_vg_zip_path", input_type=File(optional=True), prefix="--input_b_xvg_zip_path", doc=InputDocumentation(doc="Path the zip file containing the dgdl.xvg files of the B state")), ToolInput(tag="in_output_result_path", input_type=File(optional=True), prefix="--output_result_path", doc=InputDocumentation(doc="Path to the TXT results file")), ToolInput(tag="in_output_work_plot_path", input_type=File(optional=True), prefix="--output_work_plot_path", doc=InputDocumentation(doc="Path to the PNG plot results file\n"))], outputs=[ToolOutput(tag="out_output_result_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_result_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the TXT results file")), ToolOutput(tag="out_output_work_plot_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_work_plot_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the PNG plot results file\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pmxanalyse_V0_1_0().translate("wdl", allow_empty_container=True)

