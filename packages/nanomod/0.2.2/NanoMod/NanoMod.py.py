from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Nanomod_Py_V0_1_0 = CommandToolBuilder(tool="NanoMod.py", base_command=["NanoMod.py"], inputs=[ToolInput(tag="in_detect", input_type=String(), position=0, doc=InputDocumentation(doc="Detect nucleotide modifications from nanopore signal data")), ToolInput(tag="in_simulate", input_type=String(), position=1, doc=InputDocumentation(doc="Simulate with different percentage of modifications")), ToolInput(tag="in_simul_at_two", input_type=Int(), position=2, doc=InputDocumentation(doc="Simulate with different percentage of modifications")), ToolInput(tag="in_downsampling", input_type=String(), position=3, doc=InputDocumentation(doc="Simulate with DownSampling from a folder")), ToolInput(tag="in_annotate", input_type=String(), position=4, doc=InputDocumentation(doc="Annotate a known sequence using each fast5"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanomod_Py_V0_1_0().translate("wdl", allow_empty_container=True)

