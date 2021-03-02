from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Gsutil_Acl_V0_1_0 = CommandToolBuilder(tool="gsutil_acl", base_command=["gsutil", "acl"], inputs=[ToolInput(tag="in_u", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc=":<perm>")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc=":<perm>")), ToolInput(tag="in_project_number", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="-<project number>")), ToolInput(tag="in_idemaildomainallallauthviewerseditorsownersproject_number", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<id|email|domain|All|AllAuth|<viewers|editors|owners>-<project number>>")), ToolInput(tag="in_performs_request_recursively", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="Performs 'acl set' request recursively, to all objects under\nthe specified URL.")), ToolInput(tag="in_performs_request_object", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Performs 'acl set' request on all object versions.")), ToolInput(tag="in_normally_gsutil_stops", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Normally gsutil stops at the first error. The -f option causes\nit to continue when it encounters errors. If some of the ACLs\ncouldn't be set, gsutil's exit status will be non-zero even if\nthis flag is set. This option is implicitly set when running\n'gsutil -m acl...'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Acl_V0_1_0().translate("wdl", allow_empty_container=True)

