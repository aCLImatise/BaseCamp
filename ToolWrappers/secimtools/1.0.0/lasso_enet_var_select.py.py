from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Lasso_Enet_Var_Select_Py_V0_1_0 = CommandToolBuilder(tool="lasso_enet_var_select.py", base_command=["lasso_enet_var_select.py"], inputs=[ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="[-c COEFFICIENTS] [-f FLAGS]")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="Name of the column with groups.")), ToolInput(tag="in_alpha", input_type=String(optional=True), prefix="--alpha", doc=InputDocumentation(doc="Alpha Value.")), ToolInput(tag="in_coefficients", input_type=File(optional=True), prefix="--coefficients", doc=InputDocumentation(doc="Path of en coefficients file.")), ToolInput(tag="in_flags", input_type=File(optional=True), prefix="--flags", doc=InputDocumentation(doc="Path of en flag file.")), ToolInput(tag="in_plots", input_type=File(optional=True), prefix="--plots", doc=InputDocumentation(doc="Path of en coefficients file.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lasso_Enet_Var_Select_Py_V0_1_0().translate("wdl", allow_empty_container=True)

