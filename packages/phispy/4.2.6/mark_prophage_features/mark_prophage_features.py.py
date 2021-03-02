from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Mark_Prophage_Features_Py_V0_1_0 = CommandToolBuilder(tool="mark_prophage_features.py", base_command=["mark_prophage_features.py"], inputs=[ToolInput(tag="in_genbank", input_type=File(optional=True), prefix="--genbank", doc=InputDocumentation(doc="Path to input GenBank file.")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Path to output directory to write updated GenBank(s).")), ToolInput(tag="in_pp_coords", input_type=File(optional=True), prefix="--ppcoords", doc=InputDocumentation(doc="Path to prophage_coordinates.tsv file.")), ToolInput(tag="in_table", input_type=File(optional=True), prefix="--table", doc=InputDocumentation(doc="Path to tab-delimited file with confirmed prophage\nregions to mark. The file has to have the following\ncolumns: 1 - path to GenBank file, 2 - replicon id, 3\n- prophage start coordinate, 4 - prophage end\ncoordinate, 5 (optional) - prophage name (if not\nprovided pp1, pp2, etc. will be assigned for each\nfile)")), ToolInput(tag="in_gzip_files", input_type=Boolean(optional=True), prefix="--gzip_files", doc=InputDocumentation(doc="Gzip all output files. '.gz' extension will be added\nif missing. [Default: False]")), ToolInput(tag="in_un_gzip_files", input_type=Boolean(optional=True), prefix="--ungzip_files", doc=InputDocumentation(doc="Ungzip all output files. '.gz' extension will be\nremoved if present. [Default: False]"))], outputs=[ToolOutput(tag="out_outdir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory to write updated GenBank(s)."))], container="quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mark_Prophage_Features_Py_V0_1_0().translate("wdl")

