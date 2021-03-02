from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Convert_Bc_To_Binary_Ry_Py_V0_1_0 = CommandToolBuilder(tool="convert_bc_to_binary_RY.py", base_command=["convert_bc_to_binary_RY.py"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Write results to this file.")), ToolInput(tag="in_fast_a_format", input_type=Boolean(optional=True), prefix="--fasta-format", doc=InputDocumentation(doc="Read and write fasta instead of fastq format.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print lots of debugging information")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="Path to fastq input file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Bc_To_Binary_Ry_Py_V0_1_0().translate("wdl", allow_empty_container=True)

