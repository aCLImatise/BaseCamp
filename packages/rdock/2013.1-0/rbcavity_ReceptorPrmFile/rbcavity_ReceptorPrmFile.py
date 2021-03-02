from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Rbcavity_Receptorprmfile_V0_1_0 = CommandToolBuilder(tool="rbcavity_ReceptorPrmFile", base_command=["rbcavity", "ReceptorPrmFile"], inputs=[ToolInput(tag="in_receptor", input_type=File(optional=True), prefix="-receptor", doc=InputDocumentation(doc="receptor file")), ToolInput(tag="in_was", input_type=Boolean(optional=True), prefix="-was", doc=InputDocumentation(doc="write active site")), ToolInput(tag="in_ras", input_type=Boolean(optional=True), prefix="-ras", doc=InputDocumentation(doc="read active site")), ToolInput(tag="in_dump_insight", input_type=Boolean(optional=True), prefix="-dump-insight", doc=InputDocumentation(doc="dump InsightII/PyMol grids")), ToolInput(tag="in_viewer", input_type=Boolean(optional=True), prefix="-viewer", doc=InputDocumentation(doc="dump Viewer PSF/CRD files")), ToolInput(tag="in_list", input_type=String(optional=True), prefix="-list", doc=InputDocumentation(doc="list receptor atoms within <dist>")), ToolInput(tag="in_site", input_type=Boolean(optional=True), prefix="-site", doc=InputDocumentation(doc="print site descriptors")), ToolInput(tag="in_border", input_type=String(optional=True), prefix="-border", doc=InputDocumentation(doc="set the border around the cavities")), ToolInput(tag="in_rb_cavity", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_receptor_dot_prm", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbcavity_Receptorprmfile_V0_1_0().translate("wdl", allow_empty_container=True)

