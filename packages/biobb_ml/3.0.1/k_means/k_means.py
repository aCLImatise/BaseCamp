from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

K_Means_V0_1_0 = CommandToolBuilder(tool="k_means", base_command=["k_means"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_output_plot_path", input_type=File(optional=True), prefix="--output_plot_path", doc=InputDocumentation(doc="Path to the clustering plot. Accepted formats: png.")), ToolInput(tag="in_input_dataset_path", input_type=File(optional=True), prefix="--input_dataset_path", doc=InputDocumentation(doc="Path to the input dataset. Accepted formats: csv.")), ToolInput(tag="in_output_results_path", input_type=File(optional=True), prefix="--output_results_path", doc=InputDocumentation(doc="Path to the clustered dataset. Accepted formats: csv.")), ToolInput(tag="in_output_model_path", input_type=File(optional=True), prefix="--output_model_path", doc=InputDocumentation(doc="Path to the output model file. Accepted formats: pkl.\n"))], outputs=[ToolOutput(tag="out_output_plot_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_plot_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the clustering plot. Accepted formats: png.")), ToolOutput(tag="out_output_results_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_results_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the clustered dataset. Accepted formats: csv.")), ToolOutput(tag="out_output_model_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_model_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output model file. Accepted formats: pkl.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    K_Means_V0_1_0().translate("wdl", allow_empty_container=True)

