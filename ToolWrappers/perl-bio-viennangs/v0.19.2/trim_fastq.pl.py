from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Trim_Fastq_Pl_V0_1_0 = CommandToolBuilder(tool="trim_fastq.pl", base_command=["trim_fastq.pl"], inputs=[ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Fastq file for trimming")), ToolInput(tag="in_up", input_type=Boolean(optional=True), prefix="--up", doc=InputDocumentation(doc="Number of nucleotides to trim from read / quality string start")), ToolInput(tag="in_down", input_type=Boolean(optional=True), prefix="--down", doc=InputDocumentation(doc="Number of nucleotides to trim from read / quality string end")), ToolInput(tag="in_a_five", input_type=Boolean(optional=True), prefix="--a5", doc=InputDocumentation(doc="Sequence of 5' adapter to trim from the left side of the reads. This\noption and -u / -d are mutually exclusive")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trim_Fastq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

