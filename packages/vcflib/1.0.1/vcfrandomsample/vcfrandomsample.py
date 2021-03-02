from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, Boolean, File

Vcfrandomsample_V0_1_0 = CommandToolBuilder(tool="vcfrandomsample", base_command=["vcfrandomsample"], inputs=[ToolInput(tag="in_rate", input_type=String(optional=True), prefix="--rate", doc=InputDocumentation(doc="base sampling probability per locus")), ToolInput(tag="in_scale_by", input_type=Float(optional=True), prefix="--scale-by", doc=InputDocumentation(doc="scale sampling likelihood by this Float info field")), ToolInput(tag="in_random_seed", input_type=String(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="use this random seed (by default read from /dev/random)")), ToolInput(tag="in_pseudorandom_seed", input_type=Boolean(optional=True), prefix="--pseudorandom-seed", doc=InputDocumentation(doc="use a pseudorandom seed (by default read from /dev/random)")), ToolInput(tag="in_vcf_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfrandomsample_V0_1_0().translate("wdl")

