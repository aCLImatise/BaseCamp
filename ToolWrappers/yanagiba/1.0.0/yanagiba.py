from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Yanagiba_V0_1_0 = CommandToolBuilder(tool="yanagiba", base_command=["yanagiba"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="Input fastq.gz file.")), ToolInput(tag="in_summary_file", input_type=File(optional=True), prefix="--summaryfile", doc=InputDocumentation(doc="Albacore summary file with header row.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Write filtered reads to this file in .bgz format.")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Exclude reads shorter than this length. Default: 0")), ToolInput(tag="in_min_qual", input_type=Int(optional=True), prefix="--minqual", doc=InputDocumentation(doc="Minimum quality score to retain a read. Default: 10")), ToolInput(tag="in_head_trim", input_type=Int(optional=True), prefix="--headtrim", doc=InputDocumentation(doc="Trim x bases from begining of each read. Default: 0")), ToolInput(tag="in_tail_trim", input_type=String(optional=True), prefix="--tailtrim", doc=InputDocumentation(doc="Trim x bases from end of each read. Default: None")), ToolInput(tag="in_force_unique", input_type=Boolean(optional=True), prefix="--forceunique", doc=InputDocumentation(doc="Enforce unique reads. Only store first instance of a\nread from fastq input where readID occurs multiple\ntimes.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yanagiba_V0_1_0().translate("wdl", allow_empty_container=True)

