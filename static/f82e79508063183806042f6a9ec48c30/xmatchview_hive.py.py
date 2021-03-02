from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Xmatchview_Hive_Py_V0_1_0 = CommandToolBuilder(tool="xmatchview_hive.py", base_command=["xmatchview-hive.py"], inputs=[ToolInput(tag="in_x", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="file [1 vs. 2] (cross_match .rep or Pairwise mApping Format .paf)")), ToolInput(tag="in_y", input_type=File(optional=True), prefix="-y", doc=InputDocumentation(doc="file [1 vs. 3] (cross_match .rep or Pairwise mApping Format .paf)")), ToolInput(tag="in_z", input_type=File(optional=True), prefix="-z", doc=InputDocumentation(doc="file [3 vs. 2] (cross_match .rep or Pairwise mApping Format .paf)")), ToolInput(tag="in_q", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="text file 1 (format NAME:LENGTH)")), ToolInput(tag="in_r", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="text file 2 (format NAME:LENGTH)")), ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="text file 3 (format NAME:LENGTH)")), ToolInput(tag="in_d", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="(eg. exons) coordinates GFF tsv file 1 (start end) - optional")), ToolInput(tag="in_e", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="(eg. exons) coordinates GFF tsv file 2 (start end) - optional")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="(eg. exons) coordinates GFF tsv file 3 (start end) - optional")), ToolInput(tag="in_identity_threshold_eg", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="identity threshold (e.g. -i 90 will show colinear blocks >= 90% sequence identity)")), ToolInput(tag="in_length_bp_display", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="length (bp) of similarity block to display")), ToolInput(tag="in_pixel_basepair_scale", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="(pixel to basepair scale, for displaying the image)")), ToolInput(tag="in_value_transparent_solid", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="value, from 0 (transparent) to 1 (solid, default)"))], outputs=[], container="quay.io/biocontainers/xmatchview:1.2.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xmatchview_Hive_Py_V0_1_0().translate("wdl")

