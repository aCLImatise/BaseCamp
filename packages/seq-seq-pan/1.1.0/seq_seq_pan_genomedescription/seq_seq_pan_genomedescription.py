from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Seq_Seq_Pan_Genomedescription_V0_1_0 = CommandToolBuilder(tool="seq_seq_pan_genomedescription", base_command=["seq-seq-pan-genomedescription"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="File with list of /paths/to/files.fasta")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="name of output file")), ToolInput(tag="in_add", input_type=File(optional=True), prefix="--add", doc=InputDocumentation(doc="Add new genome description to this file.\n")), ToolInput(tag="in_genome_description_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="name of output file"))], container="quay.io/biocontainers/seq-seq-pan:1.1.0--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_Seq_Pan_Genomedescription_V0_1_0().translate("wdl")

