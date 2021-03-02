from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Parse_Sdrf_Validate_Sdrf_V0_1_0 = CommandToolBuilder(tool="parse_sdrf_validate_sdrf", base_command=["parse_sdrf", "validate-sdrf"], inputs=[ToolInput(tag="in_sd_rf_file", input_type=File(optional=True), prefix="--sdrf_file", doc=InputDocumentation(doc="SDRF file to be validated")), ToolInput(tag="in_template", input_type=Boolean(optional=True), prefix="--template", doc=InputDocumentation(doc="[default|human|vertebrates|nonvertebrates|plants|cell_lines]\nselect the template that will be use to\nvalidate the file (default: default)")), ToolInput(tag="in_check_ms", input_type=Boolean(optional=True), prefix="--check_ms", doc=InputDocumentation(doc="check mass spectrometry fields in SDRF (e.g.\npostranslational modifications)"))], outputs=[], container="quay.io/biocontainers/sdrf-pipelines:0.0.13--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Sdrf_Validate_Sdrf_V0_1_0().translate("wdl")

