from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Merge_Junction_Bed12_Py_V0_1_0 = CommandToolBuilder(tool="merge_junction_bed12.py", base_command=["merge_junction_bed12.py"], inputs=[ToolInput(tag="in_delim", input_type=String(optional=True), prefix="--delim", doc=InputDocumentation(doc="Delimiter for merged names. Default: ;")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use for multiprocessing. Default:\n1")), ToolInput(tag="in_top_hat", input_type=Boolean(optional=True), prefix="--tophat", doc=InputDocumentation(doc="Flag. If set, tophat-like junction style is assumed.\nThis means that junctions are defined using the\nblockSizes rather than thickStart/End. The script will\nconvert the lines to this latter format. By default,\nthe script assumes that the intron start/end are\ndefined using thickStart/End like in portcullis.\nMixed-type input files are not supported.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file. Default: stdout\n")), ToolInput(tag="in_bed", input_type=String(), position=0, doc=InputDocumentation(doc="Input BED files. Use '-' for stdin."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file. Default: stdout\n"))], container="quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Junction_Bed12_Py_V0_1_0().translate("wdl")

