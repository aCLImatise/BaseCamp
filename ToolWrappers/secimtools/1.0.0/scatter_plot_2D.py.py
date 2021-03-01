from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Scatter_Plot_2D_Py_V0_1_0 = CommandToolBuilder(tool="scatter_plot_2D.py", base_command=["scatter_plot_2D.py"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="-y", doc=InputDocumentation(doc="[-f FIGURE] [-pal PALETTE] [-col COLOR]")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="Name of the column with groups.")), ToolInput(tag="in_name_column_x", input_type=String(optional=True), prefix="--X", doc=InputDocumentation(doc="Name of column for X values")), ToolInput(tag="in_name_column_y", input_type=String(optional=True), prefix="--Y", doc=InputDocumentation(doc="Name of column for Y values")), ToolInput(tag="in_figure", input_type=File(optional=True), prefix="--figure", doc=InputDocumentation(doc="Path of figure.")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scatter_Plot_2D_Py_V0_1_0().translate("wdl", allow_empty_container=True)

