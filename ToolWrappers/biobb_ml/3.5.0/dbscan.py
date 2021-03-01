from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dbscan_V0_1_0 = CommandToolBuilder(tool="dbscan", base_command=["dbscan"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_output_plot_path", input_type=File(optional=True), prefix="--output_plot_path", doc=InputDocumentation(doc="Path to the clustering plot. Accepted formats: png.")), ToolInput(tag="in_input_dataset_path", input_type=File(optional=True), prefix="--input_dataset_path", doc=InputDocumentation(doc="Path to the input dataset. Accepted formats: csv.")), ToolInput(tag="in_output_results_path", input_type=File(optional=True), prefix="--output_results_path", doc=InputDocumentation(doc="Path to the clustered dataset. Accepted formats: csv.\n"))], outputs=[ToolOutput(tag="out_output_plot_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_plot_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the clustering plot. Accepted formats: png.")), ToolOutput(tag="out_output_results_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_results_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the clustered dataset. Accepted formats: csv.\n"))], container="quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbscan_V0_1_0().translate("wdl")

