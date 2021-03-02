from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Bam_Stat_Py_V0_1_0 = CommandToolBuilder(tool="bam_stat.py", base_command=["bam_stat.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format.")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality (phred scaled) to determine\n'uniquely mapped' reads. default=30\n"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Stat_Py_V0_1_0().translate("wdl")

