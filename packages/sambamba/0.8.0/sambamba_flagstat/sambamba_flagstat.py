from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Sambamba_Flagstat_V0_1_0 = CommandToolBuilder(tool="sambamba_flagstat", base_command=["sambamba", "flagstat"], inputs=[ToolInput(tag="in_n_threads", input_type=String(optional=True), prefix="--nthreads", doc=InputDocumentation(doc="use NTHREADS for decompression")), ToolInput(tag="in_show_progress", input_type=Boolean(optional=True), prefix="--show-progress", doc=InputDocumentation(doc="show progressbar in STDERR")), ToolInput(tag="in_tabular", input_type=Boolean(optional=True), prefix="--tabular", doc=InputDocumentation(doc="output in csv format\n")), ToolInput(tag="in_samba_mba_flag_stat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sambamba:0.8.0--h984e79f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sambamba_Flagstat_V0_1_0().translate("wdl")

