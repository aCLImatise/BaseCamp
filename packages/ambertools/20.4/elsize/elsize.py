from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Float, File

Elsize_V0_1_0 = CommandToolBuilder(tool="elsize", base_command=["elsize"], inputs=[ToolInput(tag="in_det", input_type=Boolean(optional=True), prefix="-det", doc=InputDocumentation(doc="(default) gives A_det,")), ToolInput(tag="in_ell", input_type=String(optional=True), prefix="-ell", doc=InputDocumentation(doc="A_ell (elliptic integral),")), ToolInput(tag="in_elf", input_type=Float(optional=True), prefix="-elf", doc=InputDocumentation(doc="A_elf (elementary functions approximation to A_ell,\nnormally less than 0.1A apart),")), ToolInput(tag="in_abc", input_type=String(optional=True), prefix="-abc", doc=InputDocumentation(doc="a, b, c (semiaxes of the effective ellipsoid,\njust out of curiousity)")), ToolInput(tag="in_tab", input_type=File(optional=True), prefix="-tab", doc=InputDocumentation(doc="PQR file name and all of the above into a table without header")), ToolInput(tag="in_hea", input_type=String(optional=True), prefix="-hea", doc=InputDocumentation(doc="same table as -tab but with a header")), ToolInput(tag="in_deb", input_type=String(optional=True), prefix="-deb", doc=InputDocumentation(doc="same as -tab with some extra (debugging) information")), ToolInput(tag="in_xyz", input_type=File(optional=True), prefix="-xyz", doc=InputDocumentation(doc="a file containing only XYZ coordinates as input.")), ToolInput(tag="in_your_structure_dot_pqr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_arg", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Elsize_V0_1_0().translate("wdl", allow_empty_container=True)

