from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pyrsa_Keygen_V0_1_0 = CommandToolBuilder(tool="pyrsa_keygen", base_command=["pyrsa-keygen"], inputs=[ToolInput(tag="in_pub_out", input_type=File(optional=True), prefix="--pubout", doc=InputDocumentation(doc="Output filename for the public key. The public key is not\nsaved if this option is not present. You can use pyrsa-\npriv2pub to create the public key file later.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output filename for the private key. The key is written\nto stdout if this option is not present.")), ToolInput(tag="in_form", input_type=String(optional=True), prefix="--form", doc=InputDocumentation(doc="key format of the private and public keys - default PEM")), ToolInput(tag="in_key_size", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_pub_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_pub_out", type_hint=File()), doc=OutputDocumentation(doc="Output filename for the public key. The public key is not\nsaved if this option is not present. You can use pyrsa-\npriv2pub to create the public key file later.")), ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output filename for the private key. The key is written\nto stdout if this option is not present."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyrsa_Keygen_V0_1_0().translate("wdl", allow_empty_container=True)

