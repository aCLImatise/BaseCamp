from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Google_Api_V0_1_0 = CommandToolBuilder(tool="google_api", base_command=["google-api"], inputs=[ToolInput(tag="in_scope", input_type=String(optional=True), prefix="--scope", doc=InputDocumentation(doc="Set the OAuth scope")), ToolInput(tag="in_client_id", input_type=String(optional=True), prefix="--client-id", doc=InputDocumentation(doc="Set the OAuth client id or key")), ToolInput(tag="in_client_secret", input_type=String(optional=True), prefix="--client-secret", doc=InputDocumentation(doc="Set the OAuth client secret")), ToolInput(tag="in_api", input_type=String(optional=True), prefix="--api", doc=InputDocumentation(doc="Perform discovery on API")), ToolInput(tag="in_api_version", input_type=String(optional=True), prefix="--api-version", doc=InputDocumentation(doc="Select api version")), ToolInput(tag="in_content_type", input_type=String(optional=True), prefix="--content-type", doc=InputDocumentation(doc="Content-Type for request")), ToolInput(tag="in_uri", input_type=String(optional=True), prefix="--uri", doc=InputDocumentation(doc="Sets the URI to perform a request against")), ToolInput(tag="in_discovery_uri", input_type=String(optional=True), prefix="--discovery-uri", doc=InputDocumentation(doc="Sets the URI to perform discovery")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Sets the HTTP method to use for the request")), ToolInput(tag="in_request_or_id", input_type=String(optional=True), prefix="--requestor-id", doc=InputDocumentation(doc="Sets the email address of the requestor")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Run verbosely")), ToolInput(tag="in_o_auth_two_login", input_type=Int(), position=0, doc=InputDocumentation(doc="Log a user into an API with OAuth 2.0")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="List the methods available for an API")), ToolInput(tag="in_execute", input_type=String(), position=2, doc=InputDocumentation(doc="Execute a method on the API")), ToolInput(tag="in_irb", input_type=String(), position=3, doc=InputDocumentation(doc="Start an interactive client session"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Google_Api_V0_1_0().translate("wdl", allow_empty_container=True)

