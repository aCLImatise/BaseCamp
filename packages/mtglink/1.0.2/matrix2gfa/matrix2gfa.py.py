from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Matrix2Gfa_Py_V0_1_0 = CommandToolBuilder(tool="matrix2gfa.py", base_command=["matrix2gfa.py"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="FASTA file containing the sequences of the scaffolds obtained from the assembly (format: 'xxx.fasta')")), ToolInput(tag="in_matrix", input_type=File(optional=True), prefix="-matrix", doc=InputDocumentation(doc="File containing the links between the ends of the scaffolds in tabular format")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="-threshold", doc=InputDocumentation(doc="Minimal number of links to be considered")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output directory for saving the GFA file and the corresponding FASTA file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory for saving the GFA file and the corresponding FASTA file"))], container="quay.io/biocontainers/mtglink:1.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Matrix2Gfa_Py_V0_1_0().translate("wdl")

