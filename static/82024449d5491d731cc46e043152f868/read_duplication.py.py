from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Read_Duplication_Py_V0_1_0 = CommandToolBuilder(tool="read_duplication.py", base_command=["read_duplication.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format.")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s).")), ToolInput(tag="in_up_limit", input_type=Int(optional=True), prefix="--up-limit", doc=InputDocumentation(doc="Upper limit of reads' occurrence. Only used for\nplotting, default=500 (times)")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be considered as 'uniquely mapped'.\ndefault=30\n"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Duplication_Py_V0_1_0().translate("wdl")

