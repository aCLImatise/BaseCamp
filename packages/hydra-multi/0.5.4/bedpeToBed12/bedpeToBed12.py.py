from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Bedpetobed12_Py_V0_1_0 = CommandToolBuilder(tool="bedpeToBed12.py", base_command=["bedpeToBed12.py"], inputs=[ToolInput(tag="in_bed_pe", input_type=File(optional=True), prefix="--bedpe", doc=InputDocumentation(doc="BEDPE input file")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="The name of the track.  Default is 'BEDPE'.")), ToolInput(tag="in_max_dist", input_type=Int(optional=True), prefix="--maxdist", doc=InputDocumentation(doc="The minimum distance for drawing intrachromosomal\nfeatures as if they are interchromosomal (i.e.,\nwithout a line spanning the two footprints). Default\nis 1Mb.\n"))], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedpetobed12_Py_V0_1_0().translate("wdl")

