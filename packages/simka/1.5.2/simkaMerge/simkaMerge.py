from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Simkamerge_V0_1_0 = CommandToolBuilder(tool="simkaMerge", base_command=["simkaMerge"], inputs=[ToolInput(tag="in_nb_cores", input_type=Boolean(optional=True), prefix="-nb-cores", doc=InputDocumentation(doc="(1 arg) :    number of cores  [default '0']")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="(1 arg) :    verbosity level  [default '1']")), ToolInput(tag="in_km_er_size", input_type=Boolean(optional=True), prefix="-kmer-size", doc=InputDocumentation(doc="(1 arg) :    kmer size")), ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="-in", doc=InputDocumentation(doc="(1 arg) :    input filename")), ToolInput(tag="in_out_tmp_sim_ka", input_type=Boolean(optional=True), prefix="-out-tmp-simka", doc=InputDocumentation(doc="(1 arg) :    tmp output")), ToolInput(tag="in_partition_id", input_type=Boolean(optional=True), prefix="-partition-id", doc=InputDocumentation(doc="(1 arg) :    bank name")), ToolInput(tag="in_max_memory", input_type=Boolean(optional=True), prefix="-max-memory", doc=InputDocumentation(doc="(1 arg) :    bank name")), ToolInput(tag="in_km_er_shannon_index", input_type=Boolean(optional=True), prefix="-kmer-shannon-index", doc=InputDocumentation(doc="(1 arg) :    bank name")), ToolInput(tag="in_simple_dist", input_type=Boolean(optional=True), prefix="-simple-dist", doc=InputDocumentation(doc="(0 arg) :    compute simple distances")), ToolInput(tag="in_complex_dist", input_type=Boolean(optional=True), prefix="-complex-dist", doc=InputDocumentation(doc="(0 arg) :    compute complex distances"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simkamerge_V0_1_0().translate("wdl", allow_empty_container=True)

