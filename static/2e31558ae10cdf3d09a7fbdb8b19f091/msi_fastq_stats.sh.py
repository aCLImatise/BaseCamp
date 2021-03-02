from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Msi_Fastq_Stats_Sh_V0_1_0 = CommandToolBuilder(tool="msi_fastq_stats.sh", base_command=["msi_fastq_stats.sh"], inputs=[ToolInput(tag="in_reads_two_fastq", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": the reads in the two fastq files have the same ordering")), ToolInput(tag="in_fail_empty_files", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc=": do not fail with empty files")), ToolInput(tag="in_fail_encoding_determined", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": do not fail if quality encoding cannot be determined")), ToolInput(tag="in_skip_check_duplicated", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": skip check for duplicated readnames")), ToolInput(tag="in_fast_q_info", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_two", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_vertical_line_pe", input_type=File(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/msi:0.3.5--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msi_Fastq_Stats_Sh_V0_1_0().translate("wdl")

