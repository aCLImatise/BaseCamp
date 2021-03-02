from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Makecert_V0_1_0 = CommandToolBuilder(tool="makecert", base_command=["makecert"], inputs=[ToolInput(tag="in_subject_distinguished_name", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Subject Distinguished Name")), ToolInput(tag="in_in", input_type=String(optional=True), prefix="-in", doc=InputDocumentation(doc="Issuer Distinguished Name")), ToolInput(tag="in_create_selfsigned_certificate", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Create a self-signed (root) certificate")), ToolInput(tag="in_sv", input_type=File(optional=True), prefix="-sv", doc=InputDocumentation(doc="Private key file (.PVK) for the subject (created if missing)")), ToolInput(tag="in_iv", input_type=File(optional=True), prefix="-iv", doc=InputDocumentation(doc="Private key file (.PVK) for the issuer")), ToolInput(tag="in_ic", input_type=File(optional=True), prefix="-ic", doc=InputDocumentation(doc="Extract the issuer's name from the specified certificate")), ToolInput(tag="in_certificate", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makecert_V0_1_0().translate("wdl", allow_empty_container=True)

