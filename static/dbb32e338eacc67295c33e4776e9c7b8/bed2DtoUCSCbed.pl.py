from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bed2Dtoucscbed_Pl_V0_1_0 = CommandToolBuilder(tool="bed2DtoUCSCbed.pl", base_command=["bed2DtoUCSCbed.pl"], inputs=[ToolInput(tag="in_ucsc", input_type=Boolean(optional=True), prefix="-ucsc", doc=InputDocumentation(doc="(outputs BED12 format for visualizing 2D BED file in the UCSC browser)")), ToolInput(tag="in_peaks", input_type=Boolean(optional=True), prefix="-peaks", doc=InputDocumentation(doc="(outputs HOMER-style peak file spanning interaction region)")), ToolInput(tag="in_interactions", input_type=Boolean(optional=True), prefix="-interactions", doc=InputDocumentation(doc="(outputs HOMER-style interaction file for use with annotateInteractions.pl)")), ToolInput(tag="in_ends", input_type=Boolean(optional=True), prefix="-ends", doc=InputDocumentation(doc="(outputs HOMER-style peak files representing the anchor points of each interaction)")), ToolInput(tag="in_two_d_bed_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed2Dtoucscbed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

