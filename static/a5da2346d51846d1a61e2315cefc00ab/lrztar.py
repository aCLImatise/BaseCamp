from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Lrztar_V0_1_0 = CommandToolBuilder(tool="lrztar", base_command=["lrztar"], inputs=[ToolInput(tag="in_path_decompress_lrzip_tarball", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": <path1> will decompress a <path1> lrzip tarball to current directory.")), ToolInput(tag="in_path_decompress_d_tarball", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc=": <path2> will decompress a -d specified lrzip tarball to <path2> path.")), ToolInput(tag="in__force_overwrites", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": will force overwrites."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lrztar_V0_1_0().translate("wdl", allow_empty_container=True)

