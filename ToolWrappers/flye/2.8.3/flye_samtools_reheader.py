from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Flye_Samtools_Reheader_V0_1_0 = CommandToolBuilder(tool="flye_samtools_reheader", base_command=["flye-samtools", "reheader"], inputs=[ToolInput(tag="in_no_pg", input_type=Boolean(optional=True), prefix="--no-PG", doc=InputDocumentation(doc="Do not generate an @PG header line.")), ToolInput(tag="in_in_place", input_type=Boolean(optional=True), prefix="--in-place", doc=InputDocumentation(doc="Modify the bam/cram file directly.\n(Defaults to outputting to stdout.)\n")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="samtools reheader [-P] -i in.header.sam file.bam"))], outputs=[], container="quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flye_Samtools_Reheader_V0_1_0().translate("wdl")

