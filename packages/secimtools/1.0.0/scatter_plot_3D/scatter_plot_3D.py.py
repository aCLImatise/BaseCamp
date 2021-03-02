from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Scatter_Plot_3D_Py_V0_1_0 = CommandToolBuilder(tool="scatter_plot_3D.py", base_command=["scatter_plot_3D.py"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="-y", doc=InputDocumentation(doc="[-f FIGURE] [-pal PALETTE] [-col COLOR]")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="Name of the column with groups.")), ToolInput(tag="in_name_column_x", input_type=String(optional=True), prefix="--X", doc=InputDocumentation(doc="Name of column for X values")), ToolInput(tag="in_name_column_y", input_type=String(optional=True), prefix="--Y", doc=InputDocumentation(doc="Name of column for Y values")), ToolInput(tag="in_name_column_z", input_type=String(optional=True), prefix="--Z", doc=InputDocumentation(doc="Name of column for Z values")), ToolInput(tag="in_figure", input_type=File(optional=True), prefix="--figure", doc=InputDocumentation(doc="Path of figure.")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette")), ToolInput(tag="in_rotation", input_type=String(optional=True), prefix="--rotation", doc=InputDocumentation(doc="camera viewing rotation")), ToolInput(tag="in_elevation", input_type=String(optional=True), prefix="--elevation", doc=InputDocumentation(doc="Camera vieweing elevation\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scatter_Plot_3D_Py_V0_1_0().translate("wdl", allow_empty_container=True)

