from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Svtools_Bedpetobed12_V0_1_0 = CommandToolBuilder(tool="svtools_bedpetobed12", base_command=["svtools", "bedpetobed12"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="BEDPE input file")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="Output BED12 to write (default: stdout)")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="The name of the track. Default is 'BEDPE'")), ToolInput(tag="in_max_dist", input_type=Int(optional=True), prefix="--maxdist", doc=InputDocumentation(doc="The minimum distance for drawing intrachromosomal\nfeatures as if they are interchromosomal (i.e.,\nwithout a line spanning the two footprints). Default\nis 1Mb.")), ToolInput(tag="in_tempdir", input_type=File(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="Directory for temp file downloads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtools_Bedpetobed12_V0_1_0().translate("wdl", allow_empty_container=True)

