from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Show_Aligns_V0_1_0 = CommandToolBuilder(tool="show_aligns", base_command=["show-aligns"], inputs=[ToolInput(tag="in_sort_alignments_query", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Sort alignments by the query start coordinate")), ToolInput(tag="in_sort_alignments_reference", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Sort alignments by the reference start coordinate")), ToolInput(tag="in_set_screen_width", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Set the screen width - default is terminal width")), ToolInput(tag="in_colorize_bases_output", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Colorize bases on output")), ToolInput(tag="in_set_matrix_type", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="Set the matrix type - default is 2 (BLOSUM 62)")), ToolInput(tag="in_space_markers_default", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Space between markers - default is 10, disable with 0\nother options include 1 (BLOSUM 45) and 3 (BLOSUM 80)\nnote: only has effect on amino acid alignments")), ToolInput(tag="in_delta_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_id", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_qry_id", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Show_Aligns_V0_1_0().translate("wdl")

