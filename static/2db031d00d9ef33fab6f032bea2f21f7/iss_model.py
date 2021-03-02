from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Iss_Model_V0_1_0 = CommandToolBuilder(tool="iss_model", base_command=["iss", "model"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Disable info logging. (default: False).")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Enable debug logging. (default: False).")), ToolInput(tag="in_bam", input_type=String(optional=True), prefix="--bam", doc=InputDocumentation(doc="aligned reads from which the model will be inferred\n(Required)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file path and prefix (Required)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file path and prefix (Required)\n"))], container="quay.io/biocontainers/insilicoseq:1.5.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iss_Model_V0_1_0().translate("wdl")

