from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Read_Nvc_Py_V0_1_0 = CommandToolBuilder(tool="read_NVC.py", base_command=["read_NVC.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Input file in BAM or SAM format.[required]")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s). [required]")), ToolInput(tag="in_nx", input_type=Boolean(optional=True), prefix="--nx", doc=InputDocumentation(doc="Flag option. Presense of this flag tells program to\ninclude N,X in output NVC plot [required]")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be called 'uniquely mapped'. default=30\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Nvc_Py_V0_1_0().translate("wdl", allow_empty_container=True)

