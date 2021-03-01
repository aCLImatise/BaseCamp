from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Amb2Chm_Psf_Crd_Py_V0_1_0 = CommandToolBuilder(tool="amb2chm_psf_crd.py", base_command=["amb2chm_psf_crd.py"], inputs=[ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="[--dict dict_file]")), ToolInput(tag="in_prmtop_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Prmtop file")), ToolInput(tag="in_inpcrd_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Inpcrd file")), ToolInput(tag="in_psf_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="PSF file")), ToolInput(tag="in_dict", input_type=File(optional=True), prefix="--dict", doc=InputDocumentation(doc="Dictionary file name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amb2Chm_Psf_Crd_Py_V0_1_0().translate("wdl", allow_empty_container=True)

