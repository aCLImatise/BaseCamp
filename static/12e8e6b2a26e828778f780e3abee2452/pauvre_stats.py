from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Pauvre_Stats_V0_1_0 = CommandToolBuilder(tool="pauvre_stats", base_command=["pauvre", "stats"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not output warnings to stderr")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="The input FASTQ file.")), ToolInput(tag="in_histogram", input_type=Boolean(optional=True), prefix="--histogram", doc=InputDocumentation(doc="Make a histogram of the read lengths and saves it to a\nnew file")), ToolInput(tag="in_filt_maxlen", input_type=Int(optional=True), prefix="--filt_maxlen", doc=InputDocumentation(doc="This sets the max read length filter reads.")), ToolInput(tag="in_filt_max_qual", input_type=Int(optional=True), prefix="--filt_maxqual", doc=InputDocumentation(doc="This sets the max mean read quality to filter reads.")), ToolInput(tag="in_filt_min_len", input_type=Int(optional=True), prefix="--filt_minlen", doc=InputDocumentation(doc="This sets the min read length to filter reads.")), ToolInput(tag="in_filt_min_qual", input_type=Int(optional=True), prefix="--filt_minqual", doc=InputDocumentation(doc="This sets the min mean read quality to filter reads.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pauvre_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

