from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Chorusdraftprebuild_V0_1_0 = CommandToolBuilder(tool="ChorusDraftPrebuild", base_command=["ChorusDraftPrebuild"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Fasta format input file contains short sequences")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Fasta format output file with combined long sequences\nfor speeding up oligo search. (default: output.fa)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Fasta format output file with combined long sequences\nfor speeding up oligo search. (default: output.fa)\n"))], container="quay.io/biocontainers/chorus2:2.01--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chorusdraftprebuild_V0_1_0().translate("wdl")

