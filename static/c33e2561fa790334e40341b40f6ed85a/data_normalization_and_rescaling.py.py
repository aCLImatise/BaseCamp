from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Data_Normalization_And_Rescaling_Py_V0_1_0 = CommandToolBuilder(tool="data_normalization_and_rescaling.py", base_command=["data_normalization_and_rescaling.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_uniqid", input_type=String(optional=True), prefix="--uniqID", doc=InputDocumentation(doc="Name of the column with unique.identifiers.")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Name of the normalization method that user wants to\napply.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Path for TSV output of the normalized/re-scalled data."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Path for TSV output of the normalized/re-scalled data."))], container="quay.io/biocontainers/secimtools:21.3.4.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Data_Normalization_And_Rescaling_Py_V0_1_0().translate("wdl")

