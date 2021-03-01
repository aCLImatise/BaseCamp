from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Maffrags_V0_1_0 = CommandToolBuilder(tool="mafFrags", base_command=["mafFrags"], inputs=[ToolInput(tag="in_orgs", input_type=File(optional=True), prefix="-orgs", doc=InputDocumentation(doc="- File with list of databases/organisms in order")), ToolInput(tag="in_be_done_two", input_type=Boolean(optional=True), prefix="-bed12", doc=InputDocumentation(doc="- If set, in.bed is a bed 12 file, including exons")), ToolInput(tag="in_thick_only", input_type=Boolean(optional=True), prefix="-thickOnly", doc=InputDocumentation(doc="- Only extract subset between thickStart/thickEnd")), ToolInput(tag="in_me_first", input_type=Boolean(optional=True), prefix="-meFirst", doc=InputDocumentation(doc="- Put native sequence first in maf")), ToolInput(tag="in_tx_starts", input_type=Boolean(optional=True), prefix="-txStarts", doc=InputDocumentation(doc="- Add MAF txstart region definitions ('r' lines) using BED name\nand output actual reference genome coordinates in MAF.")), ToolInput(tag="in_ref_coords", input_type=Boolean(optional=True), prefix="-refCoords", doc=InputDocumentation(doc="- output actual reference genome coordinates in MAF.")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_track", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bed", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maffrags_V0_1_0().translate("wdl", allow_empty_container=True)

