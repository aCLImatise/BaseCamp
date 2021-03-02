from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Svtools_Vcftobedpe_V0_1_0 = CommandToolBuilder(tool="svtools_vcftobedpe", base_command=["svtools", "vcftobedpe"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="VCF input (default: stdin)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output BEDPE to write (default: stdout)")), ToolInput(tag="in_tempdir", input_type=File(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="Directory for temp file downloads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtools_Vcftobedpe_V0_1_0().translate("wdl", allow_empty_container=True)

