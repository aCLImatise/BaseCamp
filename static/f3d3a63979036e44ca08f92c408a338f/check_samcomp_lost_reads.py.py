from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Check_Samcomp_Lost_Reads_Py_V0_1_0 = CommandToolBuilder(tool="check_samcomp_lost_reads.py", base_command=["check_samcomp_lost_reads.py"], inputs=[ToolInput(tag="in_summary_one", input_type=Int(optional=True), prefix="--summary1", doc=InputDocumentation(doc="The sam summary file containing read counts after\ndropping [Required]")), ToolInput(tag="in_summary_two", input_type=Int(optional=True), prefix="--summary2", doc=InputDocumentation(doc="The sam summary file containing read counts after\ndropping [Required]")), ToolInput(tag="in_ase_names", input_type=File(optional=True), prefix="--ase_names", doc=InputDocumentation(doc="fastq filename [Required]")), ToolInput(tag="in_ase", input_type=File(optional=True), prefix="--ase", doc=InputDocumentation(doc="ASE totals file with read counts generated from sam\ncompare script [Required]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file containing check info [Required]"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file containing check info [Required]"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Samcomp_Lost_Reads_Py_V0_1_0().translate("wdl")

