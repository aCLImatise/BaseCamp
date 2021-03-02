from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Map_Bed_Py_V0_1_0 = CommandToolBuilder(tool="map_bed.py", base_command=["map_bed.py"], inputs=[ToolInput(tag="in_wig_dir", input_type=String(optional=True), prefix="-wigdir", doc=InputDocumentation(doc="use a faster algorithm.")), ToolInput(tag="in_single_nucleotide", input_type=Boolean(optional=True), prefix="-SingleNucleotide", doc=InputDocumentation(doc="If specified, assumes each region is only one nucleotide.\nYou must specify -wig as well.")), ToolInput(tag="in_bed_path", input_type=String(), position=0, doc=InputDocumentation(doc="Path to gzipped bed file")), ToolInput(tag="in_out_path", input_type=String(), position=1, doc=InputDocumentation(doc="Path to gzipped output file")), ToolInput(tag="in_u_map_dir", input_type=String(), position=2, doc=InputDocumentation(doc="Path to directory with uint8 binary files produced by\nUmap/Bismap.")), ToolInput(tag="in_km_er", input_type=String(), position=3, doc=InputDocumentation(doc="The read length for defining single-read and multi-read")), ToolInput(tag="in_mapp_ability_dot", input_type=String(), position=4, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map_Bed_Py_V0_1_0().translate("wdl", allow_empty_container=True)

