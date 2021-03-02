from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Read_Distribution_Py_V0_1_0 = CommandToolBuilder(tool="read_distribution.py", base_command=["read_distribution.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format.")), ToolInput(tag="in_ref_gene", input_type=String(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in bed format.\n")), ToolInput(tag="in_qc_failed", input_type=String(), position=0, doc=InputDocumentation(doc="PCR duplicate")), ToolInput(tag="in_unmapped", input_type=String(), position=1, doc=InputDocumentation(doc="Non-primary (or secondary)      "))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Distribution_Py_V0_1_0().translate("wdl")

