from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Pyatac_Pwm_V0_1_0 = CommandToolBuilder(tool="pyatac_pwm", base_command=["pyatac", "pwm"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Accepts fasta file")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Reads around which to get nucleotide freq")), ToolInput(tag="in_dinucleotide", input_type=Boolean(optional=True), prefix="--dinucleotide", doc=InputDocumentation(doc="Compute dinucleotide frequencies instead of single")), ToolInput(tag="in_lower", input_type=Int(optional=True), prefix="--lower", doc=InputDocumentation(doc="lower limit on insert size. default is 0")), ToolInput(tag="in_upper", input_type=Int(optional=True), prefix="--upper", doc=InputDocumentation(doc="upper limit on insert size. default is 2000")), ToolInput(tag="in_not_atac", input_type=Boolean(optional=True), prefix="--not_atac", doc=InputDocumentation(doc="Don't use atac offsets")), ToolInput(tag="in_no_sym", input_type=Boolean(optional=True), prefix="--no_sym", doc=InputDocumentation(doc="Don't symmetrize PWM")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Basename for output")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="number of cores to use")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="")), ToolInput(tag="in_region", input_type=String(), position=0, doc=InputDocumentation(doc="--bed bed_file        Regions from which to use reads")), ToolInput(tag="in_nucleotide", input_type=String(), position=0, doc=InputDocumentation(doc="--flank int           Bases away from insertion site to get frequencies for."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyatac_Pwm_V0_1_0().translate("wdl", allow_empty_container=True)

