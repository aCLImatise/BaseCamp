from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Samtools_Targetcut_V0_1_0 = CommandToolBuilder(tool="samtools_targetcut", base_command=["samtools", "targetcut"], inputs=[ToolInput(tag="in_input_fmt_option", input_type=File(optional=True), prefix="--input-fmt-option", doc=InputDocumentation(doc="[=VAL]\nSpecify a single input file format option in the form\nof OPTION or OPTION=VALUE")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference sequence FASTA FILE [null]")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Set level of verbosity\n")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="")), ToolInput(tag="in_zero", input_type=Int(optional=True), prefix="-0", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/samtools:1.11--h6270b1f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Targetcut_V0_1_0().translate("wdl")

