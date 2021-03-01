from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Start_Codon_Distrib_V0_1_0 = CommandToolBuilder(tool="start_codon_distrib", base_command=["start-codon-distrib"], inputs=[ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="--dir", doc=InputDocumentation(doc="Use the 4th column of each input line to specify the direction\nof the sequence.  Positive is forward, negative is reverse\nThe input sequence is assumed to be circular")), ToolInput(tag="in_nowrap", input_type=Boolean(optional=True), prefix="--nowrap", doc=InputDocumentation(doc="Use the actual input coordinates without any wraparound\nthat would be needed by a circular genome.  Without this\noption, the output sequence is the shorter of the two ways\naround the circle.  Use the -d option to specify direction\nexplicitly.")), ToolInput(tag="in_three_comma", input_type=Boolean(optional=True), prefix="--3comma", doc=InputDocumentation(doc="output only a comma separated list (no spaces) of atg, gtg, ttg")), ToolInput(tag="in_sequence_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_coords", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Start_Codon_Distrib_V0_1_0().translate("wdl", allow_empty_container=True)

