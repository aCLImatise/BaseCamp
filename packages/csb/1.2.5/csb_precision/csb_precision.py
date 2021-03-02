from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Int, Float, Boolean

Csb_Precision_V0_1_0 = CommandToolBuilder(tool="csb_precision", base_command=["csb-precision"], inputs=[ToolInput(tag="in_pdb", input_type=Directory(optional=True), prefix="--pdb", doc=InputDocumentation(doc="the PDB database (a directory containing all PDB\nfiles)")), ToolInput(tag="in_native", input_type=File(optional=True), prefix="--native", doc=InputDocumentation(doc="native structure of the target (PDB file)")), ToolInput(tag="in_chain", input_type=String(optional=True), prefix="--chain", doc=InputDocumentation(doc="chain identifier (if not specified, the first chain)")), ToolInput(tag="in_top", input_type=Int(optional=True), prefix="--top", doc=InputDocumentation(doc="read top N fragments per position (default=25)")), ToolInput(tag="in_cpu", input_type=Int(optional=True), prefix="--cpu", doc=InputDocumentation(doc="maximum degree of parallelism (default=8)")), ToolInput(tag="in_rmsd", input_type=Float(optional=True), prefix="--rmsd", doc=InputDocumentation(doc="RMSD cutoff for precision and coverage (default=1.5)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory (default=.)")), ToolInput(tag="in_save_structures", input_type=Boolean(optional=True), prefix="--save-structures", doc=InputDocumentation(doc="create a PDB file for each fragment, superimposed over\nthe native (default=False)\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory (default=.)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csb_Precision_V0_1_0().translate("wdl", allow_empty_container=True)

