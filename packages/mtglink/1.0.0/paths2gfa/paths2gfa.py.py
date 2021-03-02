from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Paths2Gfa_Py_V0_1_0 = CommandToolBuilder(tool="paths2gfa.py", base_command=["paths2gfa.py"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="FASTA file containing the sequences of the scaffolds obtained from the assembly (format: 'xxx.fasta')")), ToolInput(tag="in_paths", input_type=File(optional=True), prefix="-paths", doc=InputDocumentation(doc="File containing the paths between scaffolds (obtained from the matrix) (format: 'xxx.paths.txt')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output directory for saving the GFA file and the corresponding FASTA file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory for saving the GFA file and the corresponding FASTA file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paths2Gfa_Py_V0_1_0().translate("wdl", allow_empty_container=True)

