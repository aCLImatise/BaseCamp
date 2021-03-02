from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Hca_Dss_Put_File_V0_1_0 = CommandToolBuilder(tool="hca_dss_put_file", base_command=["hca", "dss", "put-file"], inputs=[ToolInput(tag="in_creator_uid", input_type=File(optional=True), prefix="--creator-uid", doc=InputDocumentation(doc="User ID who is creating this file.")), ToolInput(tag="in_source_url", input_type=Int(optional=True), prefix="--source-url", doc=InputDocumentation(doc="Cloud bucket URL for source data.  Example is 's3://bucket_name/serious_dna.fa' .")), ToolInput(tag="in_uuid", input_type=File(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A RFC4122-compliant ID for the file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Put_File_V0_1_0().translate("wdl", allow_empty_container=True)

