from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Nucleoatac_Run_V0_1_0 = CommandToolBuilder(tool="nucleoatac_run", base_command=["nucleoatac", "run"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Regions for which to do stuff.")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Accepts sorted BAM file")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="give output basename")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Indexed fasta file")), ToolInput(tag="in_pwm", input_type=Int(optional=True), prefix="--pwm", doc=InputDocumentation(doc="PWM descriptor file. Default is Human.PWM.txt included\nin package")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use")), ToolInput(tag="in_write_all", input_type=Boolean(optional=True), prefix="--write_all", doc=InputDocumentation(doc="write all tracks"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nucleoatac_Run_V0_1_0().translate("wdl", allow_empty_container=True)

