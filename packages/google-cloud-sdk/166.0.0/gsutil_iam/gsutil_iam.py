from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gsutil_Iam_V0_1_0 = CommandToolBuilder(tool="gsutil_iam", base_command=["gsutil", "iam"], inputs=[ToolInput(tag="in_i_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="('user'|'serviceAccount'|'domain'|'group'):id")), ToolInput(tag="in_performs_recursively_objects", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="Performs 'iam set' recursively to all objects under the\nspecified bucket.")), ToolInput(tag="in_performs_request_object", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Performs 'iam set' request on all object versions.")), ToolInput(tag="in_performs_precondition_check", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="Performs the precondition check on each object with the\nspecified etag before setting the policy.")), ToolInput(tag="in_default_gsutil_error", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Default gsutil error handling is fail-fast. This flag\nchanges the request to fail-silent mode. This is implicitly\nset when invoking the gsutil -m option.")), ToolInput(tag="in_efficiently_dot", input_type=String(), position=0, doc=InputDocumentation(doc="CH EXAMPLES"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Iam_V0_1_0().translate("wdl", allow_empty_container=True)

