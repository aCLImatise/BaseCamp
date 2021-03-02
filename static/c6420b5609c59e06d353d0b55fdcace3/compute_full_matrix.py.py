from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int, File

Compute_Full_Matrix_Py_V0_1_0 = CommandToolBuilder(tool="compute_full_matrix.py", base_command=["compute_full_matrix.py"], inputs=[ToolInput(tag="in_in", input_type=Array(t=String(), optional=True), prefix="--in", doc=InputDocumentation(doc="A list of mProphet output files containing all\npeakgroups (use quotes around the filenames)")), ToolInput(tag="in_out_matrix", input_type=String(optional=True), prefix="--out_matrix", doc=InputDocumentation(doc="Matrix containing one peak group per (supports .csv,\n.tsv or .xls)")), ToolInput(tag="in_frac_selected", input_type=Int(optional=True), prefix="--frac_selected", doc=InputDocumentation(doc="Do not write peakgroup if selected in less than this\nfraction of runs (range 0 to 1)")), ToolInput(tag="in_file_format", input_type=File(optional=True), prefix="--file_format", doc=InputDocumentation(doc="Which input file format is used (openswath or\npeakview)")), ToolInput(tag="in_output_method", input_type=String(optional=True), prefix="--output_method", doc=InputDocumentation(doc="Which columns are written besides Intensity (none, RT,\nscore or full)")), ToolInput(tag="in_read_method", input_type=String(optional=True), prefix="--readmethod", doc=InputDocumentation(doc="Read full or minimal transition groups (minimal,full)")), ToolInput(tag="in_aligner_m_score_threshold", input_type=String(optional=True), prefix="--aligner_mscore_threshold", doc=InputDocumentation(doc="cutoff used at alignment, for coloring realigned\nvalues in blue\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Full_Matrix_Py_V0_1_0().translate("wdl", allow_empty_container=True)

