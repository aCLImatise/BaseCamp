from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Anova_Fixed_Py_V0_1_0 = CommandToolBuilder(tool="anova_fixed.py", base_command=["anova_fixed.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_factors", input_type=String(optional=True), prefix="--factors", doc=InputDocumentation(doc="Factors to run ANOVA")), ToolInput(tag="in_factor_types", input_type=String(optional=True), prefix="--factorTypes", doc=InputDocumentation(doc="Type of factors to run ANOVA")), ToolInput(tag="in_interactions", input_type=Boolean(optional=True), prefix="--interactions", doc=InputDocumentation(doc="Ask for interactions to run ANOVA")), ToolInput(tag="in_flags", input_type=File(optional=True), prefix="--flags", doc=InputDocumentation(doc="Flags file name.")), ToolInput(tag="in_fig", input_type=String(optional=True), prefix="--fig", doc=InputDocumentation(doc="Output figure name for q-q plots [pdf].")), ToolInput(tag="in_fig_two", input_type=Int(optional=True), prefix="--fig2", doc=InputDocumentation(doc="Output figure name for volcano plots [pdf].\n")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="-o ONAME, --out ONAME\nOutput file name."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anova_Fixed_Py_V0_1_0().translate("wdl", allow_empty_container=True)

