from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtools_Igv_V0_1_0 = CommandToolBuilder(tool="bedtools_igv", base_command=["bedtools", "igv"], inputs=[ToolInput(tag="in_path", input_type=Boolean(optional=True), prefix="-path", doc=InputDocumentation(doc="The full path to which the IGV snapshots should be written.\n(STRING) Default: ./")), ToolInput(tag="in_sess", input_type=Boolean(optional=True), prefix="-sess", doc=InputDocumentation(doc="The full path to an existing IGV session file to be\nloaded prior to taking snapshots.\n(STRING) Default is for no session to be loaded.")), ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="-sort", doc=InputDocumentation(doc="The type of BAM sorting you would like to apply to each image.\nOptions: base, position, strand, quality, sample, and readGroup\nDefault is to apply no sorting at all.")), ToolInput(tag="in_clps", input_type=Boolean(optional=True), prefix="-clps", doc=InputDocumentation(doc="Collapse the aligned reads prior to taking a snapshot.\nDefault is to no collapse.")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="-name", doc=InputDocumentation(doc="Use the 'name' field (column 4) for each image's filename.\nDefault is to use the 'chr:start-pos.ext'.")), ToolInput(tag="in_slop", input_type=Boolean(optional=True), prefix="-slop", doc=InputDocumentation(doc="Number of flanking base pairs on the left & right of the image.\n- (INT) Default = 0.")), ToolInput(tag="in_img", input_type=Boolean(optional=True), prefix="-img", doc=InputDocumentation(doc="The type of image to be created.\nOptions: png, eps, svg\nDefault is png.")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Igv_V0_1_0().translate("wdl", allow_empty_container=True)

