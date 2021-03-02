from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Mark_Nonconverted_Reads_Py_V0_1_0 = CommandToolBuilder(tool="mark_nonconverted_reads.py", base_command=["mark-nonconverted-reads.py"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference fasta file")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Input bam or sam file (must end in .bam or .sam)\n[default = stdin]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Name for output sam file [default = stdout]")), ToolInput(tag="in_c_count", input_type=Int(optional=True), prefix="--c_count", doc=InputDocumentation(doc="Minimum number of nonconverted Cs on a read to\nconsider it nonconverted [default = 3]")), ToolInput(tag="in_flag_reads", input_type=Boolean(optional=True), prefix="--flag_reads", doc=InputDocumentation(doc="Set the 'Failing platform / vendor quality check flag"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Name for output sam file [default = stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mark_Nonconverted_Reads_Py_V0_1_0().translate("wdl", allow_empty_container=True)

