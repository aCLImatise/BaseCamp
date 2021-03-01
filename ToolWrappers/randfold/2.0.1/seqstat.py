from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Seqstat_V0_1_0 = CommandToolBuilder(tool="seqstat", base_command=["seqstat"], inputs=[ToolInput(tag="in_report_persequence_info", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": report per-sequence info, not just a summary")), ToolInput(tag="in_gc_comp", input_type=Boolean(optional=True), prefix="--gccomp", doc=InputDocumentation(doc=": with -a, include GC composition in report (DNA/RNA only)")), ToolInput(tag="in_in_format", input_type=File(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify sequence file format <s>")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc=": suppress verbose header (used in regression testing)")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqstat_V0_1_0().translate("wdl", allow_empty_container=True)

