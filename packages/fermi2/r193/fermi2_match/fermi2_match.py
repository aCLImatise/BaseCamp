from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Fermi2_Match_V0_1_0 = CommandToolBuilder(tool="fermi2_match", base_command=["fermi2", "match"], inputs=[ToolInput(tag="in_find_smems_req", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="find SMEMs (req. both strands in one index)")), ToolInput(tag="in_discovery_novel_alleles", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="discovery novel alleles (force -p)")), ToolInput(tag="in_kmer_length_d", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length in the discovery mode (force -d) [61]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="batch size [10000000]")), ToolInput(tag="in_sampled_suffix_array", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="sampled suffix array [null]")), ToolInput(tag="in_show_coordinate_is", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="show coordinate if the number of hits is no more than INT [10]")), ToolInput(tag="in_sq", input_type=String(), position=0, doc=InputDocumentation(doc="seqName  seqLen")), ToolInput(tag="in_em", input_type=String(), position=1, doc=InputDocumentation(doc="start  end  occurrence [positions]")), ToolInput(tag="in_ns", input_type=String(), position=2, doc=InputDocumentation(doc="start  leftLen  diffLen  rightLen  leftOcc  rightOcc  strand  seq  qual"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi2_Match_V0_1_0().translate("wdl", allow_empty_container=True)

