from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Mkdir_V0_1_0 = CommandToolBuilder(tool="mkdir", base_command=["mkdir"], inputs=[ToolInput(tag="in_mode", input_type=File(optional=True), prefix="--mode", doc=InputDocumentation(doc="set file mode (as in chmod), not a=rwx - umask")), ToolInput(tag="in_parents", input_type=Boolean(optional=True), prefix="--parents", doc=InputDocumentation(doc="no error if existing, make parent directories as needed")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print a message for each created directory")), ToolInput(tag="in_set_security_context", input_type=Boolean(optional=True), prefix="-Z", doc=InputDocumentation(doc="set SELinux security context of each created directory\nto the default type")), ToolInput(tag="in_context", input_type=Boolean(optional=True), prefix="--context", doc=InputDocumentation(doc="[=CTX]  like -Z, or if CTX is specified then set the SELinux\nor SMACK security context to CTX"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkdir_V0_1_0().translate("wdl", allow_empty_container=True)

