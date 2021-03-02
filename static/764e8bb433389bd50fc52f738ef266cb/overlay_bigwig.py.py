from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Overlay_Bigwig_Py_V0_1_0 = CommandToolBuilder(tool="overlay_bigwig.py", base_command=["overlay_bigwig.py"], inputs=[ToolInput(tag="in_bw_file_one", input_type=Int(optional=True), prefix="--bwfile1", doc=InputDocumentation(doc="One BigWig file.")), ToolInput(tag="in_bw_file_two", input_type=Int(optional=True), prefix="--bwfile2", doc=InputDocumentation(doc="Another BigWig file. Both BigWig files should use the\nsame reference genome.")), ToolInput(tag="in_action", input_type=Int(optional=True), prefix="--action", doc=InputDocumentation(doc="After pairwise align two bigwig files, perform the\nfollow actions (Only select one keyword):'Add' = add\nsignals. 'Average' = average signals. 'Division'=\ndivide bigwig2 from bigwig1. Add 1 to both bigwig.\n'Max' = pick the signal that is larger. 'Min' = pick\nthe signal that is smaller. 'Product' = multiply\nsignals. 'Subtract' = subtract signals in 2nd bigwig\nfile from the corresponiding ones in the 1st bigwig\nfile. 'geometricMean' = take the geometric mean of\nsignals.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output wig file")), ToolInput(tag="in_chunk", input_type=Int(optional=True), prefix="--chunk", doc=InputDocumentation(doc="Chromosome chunk size. Each chomosome will be cut into\nsamll chunks of this size. Decrease chunk size will\nsave more RAM. default=100000 (bp)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output wig file"))], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlay_Bigwig_Py_V0_1_0().translate("wdl")

