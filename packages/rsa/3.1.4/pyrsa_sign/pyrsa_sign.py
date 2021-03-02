from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pyrsa_Sign_V0_1_0 = CommandToolBuilder(tool="pyrsa_sign", base_command=["pyrsa-sign"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Name of the file to sign. Reads from stdin if not\nspecified.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of the file to write the signature to. Written to\nstdout if this option is not present.")), ToolInput(tag="in_key_form", input_type=String(optional=True), prefix="--keyform", doc=InputDocumentation(doc="Key format of the private key - default PEM")), ToolInput(tag="in_private_key", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hash_method", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyrsa_Sign_V0_1_0().translate("wdl", allow_empty_container=True)

