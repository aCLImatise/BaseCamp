from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean

Msstitch_Trypsinize_V0_1_0 = CommandToolBuilder(tool="msstitch_trypsinize", base_command=["msstitch", "trypsinize"], inputs=[ToolInput(tag="in_input_file_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file of {} format")), ToolInput(tag="in_directory_to_output", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Directory to output in")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_misc_leav", input_type=Int(optional=True), prefix="--miscleav", doc=InputDocumentation(doc="Amount of missed cleavages to allow when trypsinizing,\ndefault is 0")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum length of peptide to be included")), ToolInput(tag="in_cut_proline", input_type=Boolean(optional=True), prefix="--cutproline", doc=InputDocumentation(doc="Flag to make trypsin before a proline residue. Then\nfiltering will be done against both cut and non-cut\npeptides.\n"))], outputs=[ToolOutput(tag="out_directory_to_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_to_output", type_hint=File()), doc=OutputDocumentation(doc="Directory to output in")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container="quay.io/biocontainers/msstitch:3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstitch_Trypsinize_V0_1_0().translate("wdl")

