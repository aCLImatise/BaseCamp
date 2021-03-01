from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Float, Boolean, Int

Retention_Time_Flags_Py_V0_1_0 = CommandToolBuilder(tool="retention_time_flags.py", base_command=["retention_time_flags.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_minutes", input_type=Float(optional=True), prefix="--minutes", doc=InputDocumentation(doc="Value cutoff. The default is .2 minutes assuming data\nare in minutes.")), ToolInput(tag="in_pctl", input_type=Boolean(optional=True), prefix="--pctl", doc=InputDocumentation(doc="The difference is calculated by 95th percentile and\n5th percentile by default. If you add this argument,\nit uses 90th percentile and 10th percentile.\n[optional]")), ToolInput(tag="in_cv_cut_off", input_type=Int(optional=True), prefix="--CVcutoff", doc=InputDocumentation(doc="The default CV cutoff will flag 10 percent of the\nrowIDs with larger CVs. If you want to set a CV\ncutoff, put the number here. [optional]")), ToolInput(tag="in_figure", input_type=String(optional=True), prefix="--figure", doc=InputDocumentation(doc="Name of the output TSV for CV plots.")), ToolInput(tag="in_flag", input_type=String(optional=True), prefix="--flag", doc=InputDocumentation(doc="Name of the output PDF for RT flags.")), ToolInput(tag="in_palette", input_type=String(optional=True), prefix="--palette", doc=InputDocumentation(doc="Name of the palette to use.")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Name of a valid color scheme on the selected palette\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Retention_Time_Flags_Py_V0_1_0().translate("wdl", allow_empty_container=True)

