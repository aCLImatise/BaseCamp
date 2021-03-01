from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Trim_Adapters_V0_1_0 = CommandToolBuilder(tool="trim_adapters", base_command=["trim_adapters"], inputs=[ToolInput(tag="in_max_edit_distance", input_type=Int(optional=True), prefix="--max-edit-distance", doc=InputDocumentation(doc="The maximum edit distance permitted when aligning the\npaired reads (default: 1).")), ToolInput(tag="in_fudge", input_type=Int(optional=True), prefix="--fudge", doc=InputDocumentation(doc="An arbitrary number of extra bases to trim from the\nends of reads (default: 1) because the original\npyadapter_trim.py script did so.")), ToolInput(tag="in_trim_from_start", input_type=Int(optional=True), prefix="--trim-from-start", doc=InputDocumentation(doc="Trim this number of bases from the start of each\nsequence (default: 0).")), ToolInput(tag="in_rc_length", input_type=Int(optional=True), prefix="--rc-length", doc=InputDocumentation(doc="Use the reverse complement of this number of bases\nfrom the beginning of the reverse read to align the\nreads (default: 20).")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Report on the handling of each FASTQ record.")), ToolInput(tag="in_forward", input_type=String(), position=0, doc=InputDocumentation(doc="The (optionally gzipped) FASTQ file containing the\nforward reads.")), ToolInput(tag="in_reverse", input_type=String(), position=1, doc=InputDocumentation(doc="The (optionally gzipped) FASTQ file containing the\nreverse reads."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trim_Adapters_V0_1_0().translate("wdl", allow_empty_container=True)

