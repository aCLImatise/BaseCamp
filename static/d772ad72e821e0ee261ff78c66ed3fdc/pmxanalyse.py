from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pmxanalyse_V0_1_0 = CommandToolBuilder(tool="pmxanalyse", base_command=["pmxanalyse"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_a_x_vg_zip_path", input_type=File(optional=True), prefix="--input_a_xvg_zip_path", doc=InputDocumentation(doc="Path the zip file containing the dgdl.xvg files of the A state. Accepted formats: zip.")), ToolInput(tag="in_input_b_x_vg_zip_path", input_type=File(optional=True), prefix="--input_b_xvg_zip_path", doc=InputDocumentation(doc="Path the zip file containing the dgdl.xvg files of the B state. Accepted formats: zip.")), ToolInput(tag="in_output_result_path", input_type=File(optional=True), prefix="--output_result_path", doc=InputDocumentation(doc="Path to the TXT results file. Accepted formats: txt.")), ToolInput(tag="in_output_work_plot_path", input_type=File(optional=True), prefix="--output_work_plot_path", doc=InputDocumentation(doc="Path to the PNG plot results file. Accepted formats: png.\n"))], outputs=[ToolOutput(tag="out_output_result_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_result_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the TXT results file. Accepted formats: txt.")), ToolOutput(tag="out_output_work_plot_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_work_plot_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the PNG plot results file. Accepted formats: png.\n"))], container="quay.io/biocontainers/biobb_pmx:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pmxanalyse_V0_1_0().translate("wdl")

