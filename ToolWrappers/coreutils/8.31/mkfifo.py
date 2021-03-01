from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Mkfifo_V0_1_0 = CommandToolBuilder(tool="mkfifo", base_command=["mkfifo"], inputs=[ToolInput(tag="in_mode", input_type=File(optional=True), prefix="--mode", doc=InputDocumentation(doc="set file permission bits to MODE, not a=rw - umask")), ToolInput(tag="in_set_security_context", input_type=Boolean(optional=True), prefix="-Z", doc=InputDocumentation(doc="set the SELinux security context to default type")), ToolInput(tag="in_context", input_type=Boolean(optional=True), prefix="--context", doc=InputDocumentation(doc="[=CTX]  like -Z, or if CTX is specified then set the SELinux\nor SMACK security context to CTX"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkfifo_V0_1_0().translate("wdl", allow_empty_container=True)

