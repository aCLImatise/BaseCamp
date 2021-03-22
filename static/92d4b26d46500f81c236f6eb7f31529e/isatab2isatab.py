from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Isatab2Isatab_V0_1_0 = CommandToolBuilder(tool="isatab2isatab", base_command=["isatab2isatab"], inputs=[ToolInput(tag="in_input_investigation_file", input_type=File(optional=True), prefix="--input-investigation-file", doc=InputDocumentation(doc="Path to input investigation file")), ToolInput(tag="in_output_investigation_file", input_type=File(optional=True), prefix="--output-investigation-file", doc=InputDocumentation(doc="Path to output investigation file, stdout ('-') by\ndefault. Needs to be in a different directory!")), ToolInput(tag="in_quotes", input_type=String(optional=True), prefix="--quotes", doc=InputDocumentation(doc="Character for quoting, e.g. '\'' (None by default)")), ToolInput(tag="in_no_warnings", input_type=Boolean(optional=True), prefix="--no-warnings", doc=InputDocumentation(doc="Suppress ISA-tab related warnings (False by default)"))], outputs=[ToolOutput(tag="out_output_investigation_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_investigation_file", type_hint=File()), doc=OutputDocumentation(doc="Path to output investigation file, stdout ('-') by\ndefault. Needs to be in a different directory!"))], container="quay.io/biocontainers/altamisa:0.2.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isatab2Isatab_V0_1_0().translate("wdl")

