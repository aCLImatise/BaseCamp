from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Antarna_Py_Mfe_V0_1_0 = CommandToolBuilder(tool="antarna.py_MFE", base_command=["antarna.py", "MFE"], inputs=[ToolInput(tag="in_cstr", input_type=String(optional=True), prefix="--Cstr", doc=InputDocumentation(doc="Structure constraint using RNA dotbracket notation\nwith fuzzy block constraint. (TYPE: str)")), ToolInput(tag="in_pk_parameter", input_type=Boolean(optional=True), prefix="--pkparameter", doc=InputDocumentation(doc="Enable optimized parameters for the usage of pseudo\nknots (Further parameter input ignored).")), ToolInput(tag="in_pk_program", input_type=File(optional=True), prefix="--pkprogram", doc=InputDocumentation(doc="Select a pseudoknot prediction program. If HotKnots is\nused, please specify the bin folder of Hotknots with\nabsolute path using HK_PATH argument. (DEFAULT: pKiss,\nTYPE: str, Choice: [pKiss|HotKnots|IPKnot])")), ToolInput(tag="in_hot_knots_path", input_type=File(optional=True), prefix="--HotKnots_PATH", doc=InputDocumentation(doc="Set HotKnots absolute path, like\n/path/to/HotKnots/bin. If HotKnots is used, please\nspecify the bin folder of Hotknots with absolute path\nusing HK_PATH argument. (DEFAULT: , TYPE: str")), ToolInput(tag="in_strategy", input_type=String(optional=True), prefix="--strategy", doc=InputDocumentation(doc="Defining the pKiss folding strategy. (DEFAULT: A,\nTYPE: str)\n")), ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_installed_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-p, --pseudoknots     Switch to pseudoknot based prediction using pKiss.\nCheck the pseudoknot parameter usage!!!"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Antarna_Py_Mfe_V0_1_0().translate("wdl", allow_empty_container=True)

