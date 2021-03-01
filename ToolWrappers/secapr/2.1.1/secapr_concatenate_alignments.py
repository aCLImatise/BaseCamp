from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Secapr_Concatenate_Alignments_V0_1_0 = CommandToolBuilder(tool="secapr_concatenate_alignments", base_command=["secapr", "concatenate_alignments"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The directory containing the fasta-alignment-files")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory where results will be safed"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory where results will be safed"))], container="quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Secapr_Concatenate_Alignments_V0_1_0().translate("wdl")

