from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Kssd_Reverse_V0_1_0 = CommandToolBuilder(tool="kssd_reverse", base_command=["kssd", "reverse"], inputs=[ToolInput(tag="in_by_reads", input_type=Boolean(optional=True), prefix="--byreads", doc=InputDocumentation(doc="recover k-mer from sketched reads .")), ToolInput(tag="in_s_huf_file", input_type=File(optional=True), prefix="--shufFile", doc=InputDocumentation(doc="provide .shuf file.")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="path for recovered k-mer files.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="threads num.")), ToolInput(tag="in_option_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_co_dir", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kssd_Reverse_V0_1_0().translate("wdl", allow_empty_container=True)

