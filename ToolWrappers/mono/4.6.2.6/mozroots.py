from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Mozroots_V0_1_0 = CommandToolBuilder(tool="mozroots", base_command=["mozroots"], inputs=[ToolInput(tag="in_import", input_type=Boolean(optional=True), prefix="--import", doc=InputDocumentation(doc="Import the certificates into the trust store.")), ToolInput(tag="in_sync", input_type=Boolean(optional=True), prefix="--sync", doc=InputDocumentation(doc="Synchronize (add/remove) the trust store with the certificates.")), ToolInput(tag="in_ask", input_type=Boolean(optional=True), prefix="--ask", doc=InputDocumentation(doc="Always confirm before adding or removing trusted certificates.")), ToolInput(tag="in_ask_add", input_type=Boolean(optional=True), prefix="--ask-add", doc=InputDocumentation(doc="Always confirm before adding a new trusted certificate.")), ToolInput(tag="in_ask_remove", input_type=Boolean(optional=True), prefix="--ask-remove", doc=InputDocumentation(doc="Always confirm before removing an existing trusted certificate.")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="Specify an alternative URL for downloading the trusted\ncertificates (MXR source format).")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="Do not download but use the specified file.")), ToolInput(tag="in_pkcs_seven", input_type=Int(optional=True), prefix="--pkcs7", doc=InputDocumentation(doc="Export the certificates into a PKCS#7 file.")), ToolInput(tag="in_machine", input_type=Boolean(optional=True), prefix="--machine", doc=InputDocumentation(doc="Import the certificate in the machine trust store.\nThe default is to import into the user store.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Limit console output to errors and confirmations messages."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mozroots_V0_1_0().translate("wdl", allow_empty_container=True)

