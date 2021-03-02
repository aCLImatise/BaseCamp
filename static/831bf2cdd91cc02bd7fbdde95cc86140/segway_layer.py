from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Segway_Layer_V0_1_0 = CommandToolBuilder(tool="segway_layer", base_command=["segway-layer"], inputs=[ToolInput(tag="in_big_bed", input_type=File(optional=True), prefix="--bigBed", doc=InputDocumentation(doc="specify bigBed output file")), ToolInput(tag="in_mnemonic_file", input_type=File(optional=True), prefix="--mnemonic-file", doc=InputDocumentation(doc="specify tab-delimited input file with mnemonic\nreplacement identifiers for segment labels")), ToolInput(tag="in_no_re_color", input_type=Boolean(optional=True), prefix="--no-recolor", doc=InputDocumentation(doc="don't recolor labels")), ToolInput(tag="in_value__tracklinesetattr", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="VALUE, --track-line-set=ATTR VALUE\nset ATTR to VALUE in track line\n"))], outputs=[ToolOutput(tag="out_big_bed", output_type=File(optional=True), selector=InputSelector(input_to_select="in_big_bed", type_hint=File()), doc=OutputDocumentation(doc="specify bigBed output file"))], container="quay.io/biocontainers/segway:3.0.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segway_Layer_V0_1_0().translate("wdl")

