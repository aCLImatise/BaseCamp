from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Multiple_Testing_Adjustment_Py_V0_1_0 = CommandToolBuilder(tool="multiple_testing_adjustment.py", base_command=["multiple_testing_adjustment.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_uniqid", input_type=String(optional=True), prefix="--uniqID", doc=InputDocumentation(doc="Name of the column with uniquedentifiers.")), ToolInput(tag="in_pval", input_type=String(optional=True), prefix="--pval", doc=InputDocumentation(doc="Name of the column with p-value.")), ToolInput(tag="in_alpha", input_type=String(optional=True), prefix="--alpha", doc=InputDocumentation(doc="Alpha value.")), ToolInput(tag="in_out_adjusted", input_type=File(optional=True), prefix="--outadjusted", doc=InputDocumentation(doc="Output path for corrected file[TSV]")), ToolInput(tag="in_flags", input_type=File(optional=True), prefix="--flags", doc=InputDocumentation(doc="Output path for flags file[TSV]\n"))], outputs=[ToolOutput(tag="out_out_adjusted", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_adjusted", type_hint=File()), doc=OutputDocumentation(doc="Output path for corrected file[TSV]")), ToolOutput(tag="out_flags", output_type=File(optional=True), selector=InputSelector(input_to_select="in_flags", type_hint=File()), doc=OutputDocumentation(doc="Output path for flags file[TSV]\n"))], container="quay.io/biocontainers/secimtools:21.3.4.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multiple_Testing_Adjustment_Py_V0_1_0().translate("wdl")

