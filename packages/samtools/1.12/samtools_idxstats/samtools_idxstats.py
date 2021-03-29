from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Samtools_Idxstats_V0_1_0 = CommandToolBuilder(tool="samtools_idxstats", base_command=["samtools", "idxstats"], inputs=[ToolInput(tag="in_input_fmt_option", input_type=File(optional=True), prefix="--input-fmt-option", doc=InputDocumentation(doc="[=VAL]\nSpecify a single input file format option in the form\nof OPTION or OPTION=VALUE")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of additional threads to use [0]")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Set level of verbosity\n")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/samtools:1.12--hd5e65b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Idxstats_V0_1_0().translate("wdl")

