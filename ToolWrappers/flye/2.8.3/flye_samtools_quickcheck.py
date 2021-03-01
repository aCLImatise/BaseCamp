from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Flye_Samtools_Quickcheck_V0_1_0 = CommandToolBuilder(tool="flye_samtools_quickcheck", base_command=["flye-samtools", "quickcheck"], inputs=[ToolInput(tag="in_verbose_output_repeat", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output (repeat for more verbosity)")), ToolInput(tag="in_suppress_warning_messages", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="suppress warning messages")), ToolInput(tag="in_status_dot", input_type=String(), position=0, doc=InputDocumentation(doc="One way to use quickcheck might be as a check that all BAM files in"))], outputs=[], container="quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Quickcheck_V0_1_0().translate("wdl")

