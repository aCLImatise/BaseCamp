from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dinosaur_V0_1_0 = CommandToolBuilder(tool="dinosaur", base_command=["dinosaur"], inputs=[ToolInput(tag="in_adv_params", input_type=String(), position=0, doc=InputDocumentation(doc="path to adv param file")), ToolInput(tag="in_outdir", input_type=String(), position=0, doc=InputDocumentation(doc="output directory (by default same as input mzML)")), ToolInput(tag="in_out_name", input_type=String(), position=1, doc=InputDocumentation(doc="basename for output files (by default same as input mzML)")), ToolInput(tag="in_targets", input_type=String(), position=0, doc=InputDocumentation(doc="path to isotope patterns target file (not used by default)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dinosaur_V0_1_0().translate("wdl", allow_empty_container=True)

