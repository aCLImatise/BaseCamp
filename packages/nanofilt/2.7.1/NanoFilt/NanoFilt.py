from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Float, Boolean

Nanofilt_V0_1_0 = CommandToolBuilder(tool="NanoFilt", base_command=["NanoFilt"], inputs=[ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Specify the path and filename for the log file.")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Filter on a minimum read length")), ToolInput(tag="in_maxlength", input_type=Int(optional=True), prefix="--maxlength", doc=InputDocumentation(doc="Filter on a maximum read length")), ToolInput(tag="in_quality", input_type=String(optional=True), prefix="--quality", doc=InputDocumentation(doc="Filter on a minimum average read quality score")), ToolInput(tag="in_ming_c", input_type=Float(optional=True), prefix="--minGC", doc=InputDocumentation(doc="Sequences must have GC content >= to this. Float between 0.0 and 1.0. Ignored if\nusing summary file.")), ToolInput(tag="in_max_gc", input_type=Int(optional=True), prefix="--maxGC", doc=InputDocumentation(doc="Sequences must have GC content <= to this. Float between 0.0 and 1.0. Ignored if\nusing summary file.")), ToolInput(tag="in_head_crop", input_type=String(optional=True), prefix="--headcrop", doc=InputDocumentation(doc="Trim n nucleotides from start of read")), ToolInput(tag="in_tail_crop", input_type=String(optional=True), prefix="--tailcrop", doc=InputDocumentation(doc="Trim n nucleotides from end of read")), ToolInput(tag="in_summary", input_type=File(optional=True), prefix="--summary", doc=InputDocumentation(doc="Use albacore or guppy summary file for quality scores")), ToolInput(tag="in_read_type", input_type=String(optional=True), prefix="--readtype", doc=InputDocumentation(doc="Which read type to extract information about from summary. Options are 1D, 2D or\n1D2")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input, uncompressed fastq file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanofilt_V0_1_0().translate("wdl", allow_empty_container=True)

