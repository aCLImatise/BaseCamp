from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Riboraptor_Plot_Read_Length_V0_1_0 = CommandToolBuilder(tool="riboraptor_plot_read_length", base_command=["riboraptor", "plot-read-length"], inputs=[ToolInput(tag="in_read_lengths", input_type=Int(optional=True), prefix="--read-lengths", doc=InputDocumentation(doc="Path to read length pickle file")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Plot Title")), ToolInput(tag="in_milli_fy_labels", input_type=Boolean(optional=True), prefix="--millify_labels", doc=InputDocumentation(doc="Convert labels on Y-axis to concise form?")), ToolInput(tag="in_save_to", input_type=File(optional=True), prefix="--saveto", doc=InputDocumentation(doc="Path to file (png/pdf) to save to")), ToolInput(tag="in_ascii", input_type=Boolean(optional=True), prefix="--ascii", doc=InputDocumentation(doc="Do not plot ascii"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboraptor_Plot_Read_Length_V0_1_0().translate("wdl", allow_empty_container=True)

