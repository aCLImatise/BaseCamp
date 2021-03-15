from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Fwdpy11_V0_1_0 = CommandToolBuilder(tool="fwdpy11", base_command=["fwdpy11"], inputs=[ToolInput(tag="in_includes", input_type=Boolean(optional=True), prefix="--includes", doc=InputDocumentation(doc="Print the CPPFLAGS required to use fwdpy11 and fwdpp")), ToolInput(tag="in_fwd_pp_headers", input_type=Boolean(optional=True), prefix="--fwdpp_headers", doc=InputDocumentation(doc="Get location of fwdpp headers")), ToolInput(tag="in_mako", input_type=Boolean(optional=True), prefix="--mako", doc=InputDocumentation(doc="Print minimal mako header for use with cppimport.")), ToolInput(tag="in_fwd_py_one_one_headers", input_type=Boolean(optional=True), prefix="--fwdpy11_headers", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_headers_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--fwdpy11_headers  Get location of fwdpy11 headers"))], outputs=[], container="quay.io/biocontainers/fwdpy11:0.13.2--py36hd672420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fwdpy11_V0_1_0().translate("wdl")

