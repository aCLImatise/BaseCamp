from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Bedpetobam_Py_V0_1_0 = CommandToolBuilder(tool="bedpeToBam.py", base_command=["bedpeToBam.py"], inputs=[ToolInput(tag="in_bed_pe", input_type=File(optional=True), prefix="--bedpe", doc=InputDocumentation(doc="BEDPE input file")), ToolInput(tag="in_max_dist", input_type=Int(optional=True), prefix="--maxdist", doc=InputDocumentation(doc="The minimum distance for drawing intrachromosomal\nfeatures as if they are interchromosomal (i.e.,\nwithout a line spanning the two footprints). Default\nis 1Mb.")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="The BEDTools genome file")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="The output file name\n")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="The output file name\n"))], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedpetobam_Py_V0_1_0().translate("wdl")

