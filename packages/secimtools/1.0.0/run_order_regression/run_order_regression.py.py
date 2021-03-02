from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Run_Order_Regression_Py_V0_1_0 = CommandToolBuilder(tool="run_order_regression.py", base_command=["run_order_regression.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_group", input_type=File(optional=True), prefix="--group", doc=InputDocumentation(doc="Group/treatment identifier in design file [Optional].")), ToolInput(tag="in_order", input_type=File(optional=True), prefix="--order", doc=InputDocumentation(doc="Name of the column on design file that contains run\norder")), ToolInput(tag="in_levels", input_type=String(optional=True), prefix="--levels", doc=InputDocumentation(doc="Different groups to sort by separeted by commas.")), ToolInput(tag="in_fig", input_type=String(optional=True), prefix="--fig", doc=InputDocumentation(doc="Name of PDF to save scatter plots.")), ToolInput(tag="in_table", input_type=String(optional=True), prefix="--table", doc=InputDocumentation(doc="Name of table for scatter plots")), ToolInput(tag="in_flags", input_type=String(optional=True), prefix="--flags", doc=InputDocumentation(doc="Name of table flags")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Add debugging log output.")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Order_Regression_Py_V0_1_0().translate("wdl", allow_empty_container=True)

