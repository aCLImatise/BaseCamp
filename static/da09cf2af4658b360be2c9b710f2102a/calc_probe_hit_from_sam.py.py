from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Calc_Probe_Hit_From_Sam_Py_V0_1_0 = CommandToolBuilder(tool="calc_probe_hit_from_sam.py", base_command=["calc_probe_hit_from_sam.py"], inputs=[ToolInput(tag="in_gtf", input_type=Boolean(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Input is GTF instead of SAM")), ToolInput(tag="in_start_base", input_type=String(optional=True), prefix="--start_base", doc=InputDocumentation(doc="Start base is 0 or 1-based index")), ToolInput(tag="in_end_base", input_type=String(optional=True), prefix="--end_base", doc=InputDocumentation(doc="End base is 0 or 1-based index")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output filename (default: stdout)\n")), ToolInput(tag="in_var_4", input_type=String(), position=0, doc=InputDocumentation(doc="input_fasta_or_fastq")), ToolInput(tag="in_positional_arguments", input_type=String(), position=1, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_var_6", input_type=String(), position=2, doc=InputDocumentation(doc="input_fasta_or_fastq")), ToolInput(tag="in_optional_arguments", input_type=String(), position=3, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output filename (default: stdout)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calc_Probe_Hit_From_Sam_Py_V0_1_0().translate("wdl", allow_empty_container=True)

