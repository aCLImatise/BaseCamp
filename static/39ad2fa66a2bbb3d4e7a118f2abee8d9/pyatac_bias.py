from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Pyatac_Bias_V0_1_0 = CommandToolBuilder(tool="pyatac_bias", base_command=["pyatac", "bias"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Accepts fasta file")), ToolInput(tag="in_pwm", input_type=Int(optional=True), prefix="--pwm", doc=InputDocumentation(doc="PWM descriptor file. Default is Human.PWM.txt included\nin package")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Positions around which to get nucleotide frequencies")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Basename for output")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="number of cores to use"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyatac_Bias_V0_1_0().translate("wdl", allow_empty_container=True)

