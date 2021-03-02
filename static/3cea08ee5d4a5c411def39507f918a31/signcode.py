from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Signcode_V0_1_0 = CommandToolBuilder(tool="signcode", base_command=["signcode"], inputs=[ToolInput(tag="in_spc", input_type=File(optional=True), prefix="-spc", doc=InputDocumentation(doc="Software Publisher Certificate file")), ToolInput(tag="in_private_key_file", input_type=File(optional=True), prefix="-v", doc=InputDocumentation(doc="Private Key file")), ToolInput(tag="in_md_hash_algorithm", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="| md5   Hash Algorithm (default: SHA1)")), ToolInput(tag="in_description_signed_file", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="Description for the signed file")), ToolInput(tag="in_url_signed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="URL for the signed file")), ToolInput(tag="in_timestamp_service_http", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Timestamp service http URL")), ToolInput(tag="in_tr", input_type=Boolean(optional=True), prefix="-tr", doc=InputDocumentation(doc="#   Number of retries for timestamp")), ToolInput(tag="in_tw", input_type=Boolean(optional=True), prefix="-tw", doc=InputDocumentation(doc="#   Delay between retries")), ToolInput(tag="in_only_timestamp_signature", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Only timestamp (no signature)")), ToolInput(tag="in_key_container_name", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="Key Container Name")), ToolInput(tag="in_provider_name", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Provider Name")), ToolInput(tag="in__provider_type", input_type=Boolean(optional=True), prefix="-y", doc=InputDocumentation(doc="#    Provider Type")), ToolInput(tag="in_ky", input_type=Boolean(optional=True), prefix="-ky", doc=InputDocumentation(doc="[signature|exchange|#]      Key Type")), ToolInput(tag="in__key_location", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[localMachine|currentUser]   Key Location")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Signcode_V0_1_0().translate("wdl", allow_empty_container=True)

