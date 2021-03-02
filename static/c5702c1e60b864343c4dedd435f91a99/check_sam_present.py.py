from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Check_Sam_Present_Py_V0_1_0 = CommandToolBuilder(tool="check_sam_present.py", base_command=["check_sam_present.py"], inputs=[ToolInput(tag="in_fq", input_type=File(optional=True), prefix="--fq", doc=InputDocumentation(doc="Name of the fq file]")), ToolInput(tag="in_aln_type", input_type=String(optional=True), prefix="--alnType", doc=InputDocumentation(doc="Input SE for single end or PE for paired end\nalignments [Default = SE]")), ToolInput(tag="in_sam_one", input_type=Int(optional=True), prefix="--sam1", doc=InputDocumentation(doc="sam file used in sam compare script, aligned to G1\n[Required]")), ToolInput(tag="in_sam_two", input_type=Int(optional=True), prefix="--sam2", doc=InputDocumentation(doc="sam file used in sam compare script, aligned to G2\n[Required]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file containing info on whether each fq file\nhas 2 sam files [Required]\n"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file containing info on whether each fq file\nhas 2 sam files [Required]\n"))], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Sam_Present_Py_V0_1_0().translate("wdl")

