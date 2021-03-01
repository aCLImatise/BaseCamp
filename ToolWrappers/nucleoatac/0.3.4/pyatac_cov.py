from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, Boolean

Pyatac_Cov_V0_1_0 = CommandToolBuilder(tool="pyatac_cov", base_command=["pyatac", "cov"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Accepts sorted BAM file")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Regions in which to get insertions")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use")), ToolInput(tag="in_lower", input_type=Int(optional=True), prefix="--lower", doc=InputDocumentation(doc="lower limit on insert size")), ToolInput(tag="in_upper", input_type=Int(optional=True), prefix="--upper", doc=InputDocumentation(doc="upper limit on insert size")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="window for flat smoothing of coverage. default is 121,\nshould be odd")), ToolInput(tag="in_scale", input_type=Float(optional=True), prefix="--scale", doc=InputDocumentation(doc="scaling value. default is 10, corresponding to signal\ncorresponding to # of fragment centers per 10 bp. Use 1 for\nfragments per 1 bp.")), ToolInput(tag="in_not_atac", input_type=Boolean(optional=True), prefix="--not_atac", doc=InputDocumentation(doc="Don't use atac offsets"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyatac_Cov_V0_1_0().translate("wdl", allow_empty_container=True)

