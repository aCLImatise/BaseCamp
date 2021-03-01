from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Insertion_Profile_Py_V0_1_0 = CommandToolBuilder(tool="insertion_profile.py", base_command=["insertion_profile.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format.")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s).")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) for an\nalignment to be considered as 'uniquely mapped'.\ndefault=30")), ToolInput(tag="in_sequencing", input_type=String(optional=True), prefix="--sequencing", doc=InputDocumentation(doc="Sequencing layout. 'SE'(single-end) or 'PE'(pair-end).\n"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Insertion_Profile_Py_V0_1_0().translate("wdl")

