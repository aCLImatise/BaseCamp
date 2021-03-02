from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Rnftools_Validate_V0_1_0 = CommandToolBuilder(tool="rnftools_validate", base_command=["rnftools", "validate"], inputs=[ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="FASTQ file to be validated.")), ToolInput(tag="in_warnings_as_errors", input_type=Boolean(optional=True), prefix="--warnings-as-errors", doc=InputDocumentation(doc="Treat warnings as errors.")), ToolInput(tag="in_all_occurrences", input_type=Boolean(optional=True), prefix="--all-occurrences", doc=InputDocumentation(doc="Report all occurrences of warnings and errors.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnftools_Validate_V0_1_0().translate("wdl", allow_empty_container=True)

