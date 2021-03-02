from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Umis_Fastqtransform_V0_1_0 = CommandToolBuilder(tool="umis_fastqtransform", base_command=["umis", "fastqtransform"], inputs=[ToolInput(tag="in_keep_fast_q_tags", input_type=Boolean(optional=True), prefix="--keep_fastq_tags", doc=InputDocumentation(doc="Keep dual index barcodes separate.")), ToolInput(tag="in_demux_ed_cb", input_type=Int(optional=True), prefix="--demuxed_cb", doc=InputDocumentation(doc="Minimum length of read to keep.")), ToolInput(tag="in_stdout_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umis_Fastqtransform_V0_1_0().translate("wdl", allow_empty_container=True)

