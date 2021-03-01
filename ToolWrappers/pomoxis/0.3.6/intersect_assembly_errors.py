from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Intersect_Assembly_Errors_V0_1_0 = CommandToolBuilder(tool="intersect_assembly_errors", base_command=["intersect_assembly_errors"], inputs=[ToolInput(tag="in_reference_be_file", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="reference, should be a fasta file. If correspondng bwa indices\ndo not exist they will be created. (required).")), ToolInput(tag="in_fasta_input_assemblies", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="fasta input assemblies (required).")), ToolInput(tag="in_alignment_threads_default", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="alignment threads (default: 1).")), ToolInput(tag="in_output_directory_default", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory (default: compare_assm)."))], outputs=[ToolOutput(tag="out_output_directory_default", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_default", type_hint=File()), doc=OutputDocumentation(doc="output directory (default: compare_assm)."))], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intersect_Assembly_Errors_V0_1_0().translate("wdl")

