from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Hca_Upload_Files_V0_1_0 = CommandToolBuilder(tool="hca_upload_files", base_command=["hca", "upload", "files"], inputs=[ToolInput(tag="in_target_filename", input_type=File(optional=True), prefix="--target-filename", doc=InputDocumentation(doc="Filename to use in upload area (if you wish to change\nit during upload). Only valid when one file is being\nuploaded.")), ToolInput(tag="in_file_extension", input_type=File(optional=True), prefix="--file-extension", doc=InputDocumentation(doc="File extension to limit which files should be uploaded\nOnly valid when directories are targeted for upload.")), ToolInput(tag="in_no_transfer_acceleration", input_type=Boolean(optional=True), prefix="--no-transfer-acceleration", doc=InputDocumentation(doc="Don't use Amazon S3 Transfer Acceleration. By default\nwe using the aforementioned service to upload via an\nendpoint geographically close to you, instead of\ndirectly to Virginia, USA. However, in some situations\nthis can be slower. Use the S3 Transfer Acceleration\nSpeed Comparison Tool to determine whether you should\nuse this option: https://s3-accelerate-\nspeedtest.s3-accelerate.amazonaws.com/en/accelerate-\nspeed-comparsion.html.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress normal output.")), ToolInput(tag="in_sync", input_type=Boolean(optional=True), prefix="--sync", doc=InputDocumentation(doc="If set to true, do not upload files to an area in\nwhich the file has already been uploaded before\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Upload_Files_V0_1_0().translate("wdl", allow_empty_container=True)

