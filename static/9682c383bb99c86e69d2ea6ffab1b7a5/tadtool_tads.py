from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Tadtool_Tads_V0_1_0 = CommandToolBuilder(tool="tadtool_tads", base_command=["tadtool", "tads"], inputs=[ToolInput(tag="in_algorithm", input_type=String(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="TAD-calling algorithm. Options: insulation,\nninsulation, directionality. Default: insulation.")), ToolInput(tag="in_normalisation_window", input_type=Int(optional=True), prefix="--normalisation-window", doc=InputDocumentation(doc="Normalisation window in number of regions. Only\naffects ninsulation algorithm. If not specified,\nwindow will be the whole chromosome.")), ToolInput(tag="in_write_values", input_type=Boolean(optional=True), prefix="--write-values", doc=InputDocumentation(doc="Write index values to file instead of TADs.")), ToolInput(tag="in_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="Square Hi-C Matrix as tab-delimited or .npy file\n(created with numpy.save) or sparse matrix format\n(each line: <row region index> <column region index>\n<matrix value>)")), ToolInput(tag="in_regions", input_type=String(), position=1, doc=InputDocumentation(doc="BED file (no header) with regions corresponding to the\nnumber of rows in the provided matrix. Fourth column,\nif present, denotes name field, which is used as an\nidentifier in sparse matrix notation.")), ToolInput(tag="in_window_size", input_type=String(), position=2, doc=InputDocumentation(doc="Window size in base pairs")), ToolInput(tag="in_cut_off", input_type=String(), position=3, doc=InputDocumentation(doc="Cutoff for TAD-calling algorithm at given window size.")), ToolInput(tag="in_output", input_type=String(), position=4, doc=InputDocumentation(doc="Optional output file to save TADs."))], outputs=[], container="quay.io/biocontainers/tadtool:0.82--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tadtool_Tads_V0_1_0().translate("wdl")

