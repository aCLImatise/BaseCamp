from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Array, String

Amas_Py_Convert_V0_1_0 = CommandToolBuilder(tool="AMAS.py_convert", base_command=["AMAS.py", "convert"], inputs=[ToolInput(tag="in_out_format", input_type=File(optional=True), prefix="--out-format", doc=InputDocumentation(doc="File format for the output alignment. Default: fasta")), ToolInput(tag="in_check_align", input_type=Boolean(optional=True), prefix="--check-align", doc=InputDocumentation(doc="Check if input sequences are aligned. Default: no")), ToolInput(tag="in_in_files", input_type=Array(t=String(), optional=True), prefix="--in-files", doc=InputDocumentation(doc="Alignment files to be taken as input. You can specify\nmultiple files using wildcards (e.g. --in-files\n*fasta)")), ToolInput(tag="in_in_format", input_type=String(optional=True), prefix="--in-format", doc=InputDocumentation(doc="The format of input alignment")), ToolInput(tag="in_data_type", input_type=String(optional=True), prefix="--data-type", doc=InputDocumentation(doc="Type of data\n")), ToolInput(tag="in_check", input_type=String(), position=0, doc=InputDocumentation(doc="-c CORES, --cores CORES"))], outputs=[ToolOutput(tag="out_out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_format", type_hint=File()), doc=OutputDocumentation(doc="File format for the output alignment. Default: fasta"))], container="quay.io/biocontainers/amas:1.0--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amas_Py_Convert_V0_1_0().translate("wdl")

