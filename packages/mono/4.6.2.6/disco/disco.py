from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Disco_V0_1_0 = CommandToolBuilder(tool="disco", base_command=["disco"], inputs=[ToolInput(tag="in_nologo", input_type=Boolean(optional=True), prefix="-nologo", doc=InputDocumentation(doc="Supress the startup logo")), ToolInput(tag="in_no_save", input_type=Boolean(optional=True), prefix="-nosave", doc=InputDocumentation(doc="Do not save the discovered documents to disk.\nThe default is to save the documents.")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="-out", doc=InputDocumentation(doc=":directory     The directory where to save the discovered documents.\nBy default, documents are saved in the current\ndirectory.")), ToolInput(tag="in_username", input_type=Boolean(optional=True), prefix="-username", doc=InputDocumentation(doc=":username")), ToolInput(tag="in_password", input_type=Boolean(optional=True), prefix="-password", doc=InputDocumentation(doc=":password")), ToolInput(tag="in_domain", input_type=Boolean(optional=True), prefix="-domain", doc=InputDocumentation(doc=":domain     The credentials to use when connecting to the server.")), ToolInput(tag="in_proxy", input_type=Boolean(optional=True), prefix="-proxy", doc=InputDocumentation(doc=":url            The url of the proxy server to use for http requests.")), ToolInput(tag="in_proxy_username", input_type=Boolean(optional=True), prefix="-proxyusername", doc=InputDocumentation(doc=":name")), ToolInput(tag="in_proxy_password", input_type=Boolean(optional=True), prefix="-proxypassword", doc=InputDocumentation(doc=":pwd")), ToolInput(tag="in_proxy_domin", input_type=Boolean(optional=True), prefix="-proxydomin", doc=InputDocumentation(doc=":domain    The credentials to use when connection to the proxy.")), ToolInput(tag="in_url", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Disco_V0_1_0().translate("wdl", allow_empty_container=True)

