from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Int, Boolean

Gen_Cons_From_Poa_Py_V0_1_0 = CommandToolBuilder(tool="gen_cons_from_poa.py", base_command=["gen_cons_from_poa.py"], inputs=[ToolInput(tag="in_root", input_type=Directory(optional=True), prefix="--root", doc=InputDocumentation(doc="directory where to look for files (the one given to\nspectral_layout_from_minimap.py).")), ToolInput(tag="in_poa_path", input_type=File(optional=True), prefix="--poa_path", doc=InputDocumentation(doc="path/to/poa/poa (path to the executable)")), ToolInput(tag="in_poa_mat_path", input_type=File(optional=True), prefix="--poa_mat_path", doc=InputDocumentation(doc="path/to/poa-score.mat")), ToolInput(tag="in_contig", input_type=String(optional=True), prefix="--contig", doc=InputDocumentation(doc="index of contig you wish to compute consensus for")), ToolInput(tag="in_w_len", input_type=Int(optional=True), prefix="--w_len", doc=InputDocumentation(doc="length of consensus windows for POA.")), ToolInput(tag="in_w_ovl_len", input_type=Int(optional=True), prefix="--w_ovl_len", doc=InputDocumentation(doc="overlap length between two successive consensus\nwindows.")), ToolInput(tag="in_verbosity", input_type=Boolean(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="verbosity level (nothing : 0, -v : 1; -vv : 2)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gen_Cons_From_Poa_Py_V0_1_0().translate("wdl", allow_empty_container=True)

