from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Extract_Fasta_Bins_Py_V0_1_0 = CommandToolBuilder(tool="extract_fasta_bins.py", base_command=["extract_fasta_bins.py"], inputs=[ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output_path", doc=InputDocumentation(doc="Directory where files will be printed\n")), ToolInput(tag="in_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input Fasta file.")), ToolInput(tag="in_cluster_file", input_type=String(), position=1, doc=InputDocumentation(doc="Concoct output cluster file"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="Directory where files will be printed\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Fasta_Bins_Py_V0_1_0().translate("wdl", allow_empty_container=True)

