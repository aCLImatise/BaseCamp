from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float

Bayestypertools_Makebloom_V0_1_0 = CommandToolBuilder(tool="bayesTyperTools_makeBloom", base_command=["bayesTyperTools", "makeBloom"], inputs=[ToolInput(tag="in_arg_kmc_kmer", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="[ --kmc-table-prefix ] arg       KMC kmer table prefix. Output is written as <kmc-table-prefix>.bloomMeta and <kmc-table-prefix>.bloomData.")), ToolInput(tag="in_arg_number_threads", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --num-threads ] arg (=1)       number of threads used (+= 1 I/O thread).")), ToolInput(tag="in_false_positive_rate", input_type=Float(optional=True), prefix="--false-positive-rate", doc=InputDocumentation(doc="(=0.001)  bloom filter false positive rate."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bayestypertools_Makebloom_V0_1_0().translate("wdl", allow_empty_container=True)

