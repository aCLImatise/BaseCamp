from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Hierarchical_Clustering_Heatmap_Py_V0_1_0 = CommandToolBuilder(tool="hierarchical_clustering_heatmap.py", base_command=["hierarchical_clustering_heatmap.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_uniqid", input_type=String(optional=True), prefix="--uniqID", doc=InputDocumentation(doc="Name of the column with unique dentifiers.")), ToolInput(tag="in_den_do_gram", input_type=Boolean(optional=True), prefix="--dendogram", doc=InputDocumentation(doc="Indicate wether you want to use a dendogram or not in\nthe heatmap.")), ToolInput(tag="in_labels", input_type=String(optional=True), prefix="--labels", doc=InputDocumentation(doc="Indicate wichlabels if any that you want to remove\nfrom the plot.")), ToolInput(tag="in_fig", input_type=File(optional=True), prefix="--fig", doc=InputDocumentation(doc="Output path for heatmap file[PDF]")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette\n"))], outputs=[ToolOutput(tag="out_fig", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fig", type_hint=File()), doc=OutputDocumentation(doc="Output path for heatmap file[PDF]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hierarchical_Clustering_Heatmap_Py_V0_1_0().translate("wdl", allow_empty_container=True)

