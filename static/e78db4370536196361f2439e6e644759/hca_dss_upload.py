from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Hca_Dss_Upload_V0_1_0 = CommandToolBuilder(tool="hca_dss_upload", base_command=["hca", "dss", "upload"], inputs=[ToolInput(tag="in_src_dir", input_type=File(optional=True), prefix="--src-dir", doc=InputDocumentation(doc="file path to a directory of files to upload to the replica.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="the replica to upload to. The supported replicas are: aws for Amazon Web Services, and\ngcp for Google Cloud Platform. [aws, gcp]")), ToolInput(tag="in_staging_bucket", input_type=Int(optional=True), prefix="--staging-bucket", doc=InputDocumentation(doc="a client controlled AWS S3 storage bucket to upload from.")), ToolInput(tag="in_timeout_seconds", input_type=File(optional=True), prefix="--timeout-seconds", doc=InputDocumentation(doc="the time to wait for a file to upload to replica.")), ToolInput(tag="in_no_progress", input_type=Boolean(optional=True), prefix="--no-progress", doc=InputDocumentation(doc="if set, will not report upload progress. Note that even if this flag\nis not set, progress will not be reported if the logging level is higher\nthan INFO or if the session is not interactive."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Upload_V0_1_0().translate("wdl", allow_empty_container=True)

