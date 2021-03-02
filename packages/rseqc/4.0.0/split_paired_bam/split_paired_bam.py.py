from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Split_Paired_Bam_Py_V0_1_0 = CommandToolBuilder(tool="split_paired_bam.py", base_command=["split_paired_bam.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Alignment file in BAM or SAM format. BAM file should\nbe sorted and indexed")), ToolInput(tag="in_out_prefix", input_type=File(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output BAM files. 'prefix.R1.bam' file\ncontains the 1st read, 'prefix.R2.bam' file contains\nthe 2nd read\n"))], outputs=[ToolOutput(tag="out_out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix of output BAM files. 'prefix.R1.bam' file\ncontains the 1st read, 'prefix.R2.bam' file contains\nthe 2nd read\n"))], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Paired_Bam_Py_V0_1_0().translate("wdl")

