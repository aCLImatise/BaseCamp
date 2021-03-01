from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Ndg_Httpclient_V0_1_0 = CommandToolBuilder(tool="ndg_httpclient", base_command=["ndg_httpclient"], inputs=[ToolInput(tag="in_certificate", input_type=File(optional=True), prefix="--certificate", doc=InputDocumentation(doc="Certificate file - defaults to $HOME/credentials.pem")), ToolInput(tag="in_private_key", input_type=File(optional=True), prefix="--private-key", doc=InputDocumentation(doc="Private key file - defaults to the certificate file")), ToolInput(tag="in_ca_certificate_dir", input_type=File(optional=True), prefix="--ca-certificate-dir", doc=InputDocumentation(doc="Trusted CA certificate file directory")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debug information.")), ToolInput(tag="in_post_data_file", input_type=File(optional=True), prefix="--post-data-file", doc=InputDocumentation(doc="POST data file")), ToolInput(tag="in_fetch", input_type=File(optional=True), prefix="--fetch", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_no_verify_peer", input_type=Boolean(optional=True), prefix="--no-verify-peer", doc=InputDocumentation(doc="Skip verification of peer certificate.")), ToolInput(tag="in_passwd_basicauthuserpasswdhttp_authentication", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc=":PASSWD, --basicauth=USER:PASSWD\nHTTP authentication credentials")), ToolInput(tag="in_header", input_type=String(optional=True), prefix="--header", doc=InputDocumentation(doc=": VALUE\nAdd HTTP header to request\n")), ToolInput(tag="in_url", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_fetch", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fetch", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ndg_Httpclient_V0_1_0().translate("wdl", allow_empty_container=True)

