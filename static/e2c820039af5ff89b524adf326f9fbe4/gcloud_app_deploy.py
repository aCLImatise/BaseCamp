from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Gcloud_App_Deploy_V0_1_0 = CommandToolBuilder(tool="gcloud_app_deploy", base_command=["gcloud", "app", "deploy"], inputs=[ToolInput(tag="in_bucket", input_type=String(optional=True), prefix="--bucket", doc=InputDocumentation(doc="The Google Cloud Storage bucket used to stage files associated with the\ndeployment. If this argument is not specified, the application's\ndefault code bucket is used.")), ToolInput(tag="in_image_url", input_type=String(optional=True), prefix="--image-url", doc=InputDocumentation(doc="Deploy with a specific Docker image. Docker url must be from one of the\nvalid gcr hostnames.")), ToolInput(tag="in_promote", input_type=Boolean(optional=True), prefix="--promote", doc=InputDocumentation(doc="Promote the deployed version to receive all traffic.\nTrue by default. To change the default behavior for your current\nenvironment, run:\n$ gcloud config set app/promote_by_default false")), ToolInput(tag="in_stop_previous_version", input_type=Boolean(optional=True), prefix="--stop-previous-version", doc=InputDocumentation(doc="Stop the previously running version when deploying a new version that\nreceives all traffic. Overrides the default app/stop_previous_version\nproperty value for this command invocation. Use\n--no-stop-previous-version to disable."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_App_Deploy_V0_1_0().translate("wdl", allow_empty_container=True)

