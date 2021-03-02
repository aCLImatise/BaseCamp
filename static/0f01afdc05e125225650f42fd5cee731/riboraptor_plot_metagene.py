from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Riboraptor_Plot_Metagene_V0_1_0 = CommandToolBuilder(tool="riboraptor_plot_metagene", base_command=["riboraptor", "plot-metagene"], inputs=[ToolInput(tag="in_counts", input_type=File(optional=True), prefix="--counts", doc=InputDocumentation(doc="Path to counts file (if not stdin)")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Plot Title")), ToolInput(tag="in_marker", input_type=Boolean(optional=True), prefix="--marker", doc=InputDocumentation(doc="[o|x]    Marker (o/x) for plots")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Color")), ToolInput(tag="in_milli_fy_labels", input_type=Boolean(optional=True), prefix="--millify_labels", doc=InputDocumentation(doc="Convert labels on Y-axis to concise form?")), ToolInput(tag="in_identify_peak", input_type=Boolean(optional=True), prefix="--identify_peak", doc=InputDocumentation(doc="Identify Peak?")), ToolInput(tag="in_positions", input_type=String(optional=True), prefix="--positions", doc=InputDocumentation(doc="Range of positions to plot")), ToolInput(tag="in_save_to", input_type=File(optional=True), prefix="--saveto", doc=InputDocumentation(doc="Path to file (png/pdf) to save to")), ToolInput(tag="in_ylabel", input_type=String(optional=True), prefix="--ylabel", doc=InputDocumentation(doc="Y axix label")), ToolInput(tag="in_ascii", input_type=Boolean(optional=True), prefix="--ascii", doc=InputDocumentation(doc="Do not plot ascii"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboraptor_Plot_Metagene_V0_1_0().translate("wdl", allow_empty_container=True)

