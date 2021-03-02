from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Blank_Feature_Filtering_Flags_Py_V0_1_0 = CommandToolBuilder(tool="blank_feature_filtering_flags.py", base_command=["blank_feature_filtering_flags.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_uniqid", input_type=String(optional=True), prefix="--uniqID", doc=InputDocumentation(doc="Name of the column with uniquedentifiers.")), ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="Name of column in design filewith Group/treatment\ninformation.")), ToolInput(tag="in_bff", input_type=Int(optional=True), prefix="--bff", doc=InputDocumentation(doc="Default BFF value [default 5000]")), ToolInput(tag="in_blank", input_type=String(optional=True), prefix="--blank", doc=InputDocumentation(doc="name of the column with the blanks")), ToolInput(tag="in_criteria", input_type=String(optional=True), prefix="--criteria", doc=InputDocumentation(doc="Value of the criteria to selct")), ToolInput(tag="in_out_flags", input_type=File(optional=True), prefix="--outflags", doc=InputDocumentation(doc="Output path for flags file[CSV]")), ToolInput(tag="in_out_bff", input_type=File(optional=True), prefix="--outbff", doc=InputDocumentation(doc="Output path for bff file[CSV]\n"))], outputs=[ToolOutput(tag="out_out_flags", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_flags", type_hint=File()), doc=OutputDocumentation(doc="Output path for flags file[CSV]")), ToolOutput(tag="out_out_bff", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_bff", type_hint=File()), doc=OutputDocumentation(doc="Output path for bff file[CSV]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blank_Feature_Filtering_Flags_Py_V0_1_0().translate("wdl", allow_empty_container=True)

