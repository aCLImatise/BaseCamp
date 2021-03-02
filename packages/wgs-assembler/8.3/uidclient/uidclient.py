from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Uidclient_V0_1_0 = CommandToolBuilder(tool="uidclient", base_command=["uidclient"], inputs=[ToolInput(tag="in_print_uids_exit", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="print n UIDs and exit.")), ToolInput(tag="in_use_namespace_ns", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="use namespace ns.")), ToolInput(tag="in_contact_euid_server", input_type=String(optional=True), prefix="-E", doc=InputDocumentation(doc="contact EUID server 'server'.")), ToolInput(tag="in_thrash", input_type=Boolean(optional=True), prefix="-thrash", doc=InputDocumentation(doc="debug; get UIDs as fast as possible using blocksize 1.\nThis is not what you want.  Don't use it.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uidclient_V0_1_0().translate("wdl", allow_empty_container=True)

