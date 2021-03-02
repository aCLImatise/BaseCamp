from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Correlation_Matrix_V0_1_0 = CommandToolBuilder(tool="correlation_matrix", base_command=["correlation_matrix"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_dataset_path", input_type=File(optional=True), prefix="--input_dataset_path", doc=InputDocumentation(doc="Path to the input dataset. Accepted formats: csv.")), ToolInput(tag="in_output_plot_path", input_type=File(optional=True), prefix="--output_plot_path", doc=InputDocumentation(doc="Path to the correlation matrix plot. Accepted formats: png.\n"))], outputs=[ToolOutput(tag="out_output_plot_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_plot_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the correlation matrix plot. Accepted formats: png.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correlation_Matrix_V0_1_0().translate("wdl", allow_empty_container=True)

