from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Check_Lost_Reads_Py_V0_1_0 = CommandToolBuilder(tool="check_lost_reads.py", base_command=["check_lost_reads.py"], inputs=[ToolInput(tag="in_aln_sumone", input_type=Int(optional=True), prefix="--alnSum1", doc=InputDocumentation(doc="The G1 alignment summary file containing all read\ntypes [Required]")), ToolInput(tag="in_aln_sum_two", input_type=Int(optional=True), prefix="--alnSum2", doc=InputDocumentation(doc="The G2 alignment summary file containing all read\ntypes [Required]")), ToolInput(tag="in_fq", input_type=File(optional=True), prefix="--fq", doc=InputDocumentation(doc="FQ file used in alignment [Required]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file containing check info [Required]"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file containing check info [Required]"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Lost_Reads_Py_V0_1_0().translate("wdl")

