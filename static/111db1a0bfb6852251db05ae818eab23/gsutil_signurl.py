from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gsutil_Signurl_V0_1_0 = CommandToolBuilder(tool="gsutil_signurl", base_command=["gsutil", "signurl"], inputs=[ToolInput(tag="in_specifies_http_method", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Specifies the HTTP method to be authorized for use\nwith the signed url, default is GET. You may also specify\nRESUMABLE to create a signed resumable upload start URL. When\nusing a signed URL to start a resumable upload session, you will\nneed to specify the 'x-goog-resumable:start' header in the\nrequest or else signature validation will fail.")), ToolInput(tag="in_specifies_duration_be", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Specifies the duration that the signed url should be valid\nfor, default duration is 1 hour.\nTimes may be specified with no suffix (default hours), or\nwith s = seconds, m = minutes, h = hours, d = days.\nThis option may be specified multiple times, in which case\nthe duration the link remains valid is the sum of all the\nduration options.")), ToolInput(tag="in_specifies_content_type", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Specifies the content type for which the signed url is\nvalid for.")), ToolInput(tag="in_specify_keystore_password", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Specify the keystore password instead of prompting.")), ToolInput(tag="in_documentation_dot", input_type=String(), position=0, doc=InputDocumentation(doc="<https://cloud.google.com/storage/docs/authentication#generating-a-private-key>`_"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Signurl_V0_1_0().translate("wdl", allow_empty_container=True)

